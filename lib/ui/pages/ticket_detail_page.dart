part of 'pages.dart';

import 'package:flutter/material.dart';
import 'package:tiketbioskop/bloc/page_bloc.dart';

class TicketDetailPage extends StatelessWidget {
  final Ticket ticket;

  TicketDetailPage(this.ticket);
  @override 
  Widget build(BuildContext context) {
    return willPopScope(
      onWillPop: () async {
        context.bloc<PageBloc>().add(GoToMainPage());
        return;

      },
      child: Scaffold(
        body: Center,
        child: Text(ticket.movieDetail.title),
      ));
  }
}