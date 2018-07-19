<%-- 
    Document   : sign-up
    Created on : Jun 21, 2018, 7:04:46 AM
    Author     : X453SA
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>

        <!DOCTYPE html>
        <html>

        <head>
            
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Deutsche Bahn - Sign Up</title>
            <link rel="stylesheet" href="source/css/main.css">
            <%@include file="includes/cssimport.jsp" %>
        </head>

        <body>
            <%@include file="includes/header.jsp" %>
            <div class="container mt-5">
                <div class="row mt-5"></div>
                <!-- Section: Contact v.1 -->
                <section class="my-5 mt-5">
                    <!-- Section heading -->
                    <h2 class="h1-responsive font-weight-bold text-center mt-5">Passenger Right</h2>
                    <!-- Section description -->
                    <h4 class="text-center w-responsive mx-auto">Overview of main regulation of refund caused by force majeure</h4>
                    <p class="justify">Since the European Regulation (EC) 1371/2007 on rail passengers rights and obligations came into force on 3 December 2009, passengers have been entitled to standardised rights in the rail sector in Germany and Europe. The legislation grants passengers the same rights for travel with all railway undertakings, on all trains, regardless of which railway undertaking is responsible for operating the train.</p>
                    <p class="justify">These passenger rights apply to rail transport only. This includes all trains, from S-Bahn (local rapid transit) to ICE, but not U-Bahn underground trains and trams. The passenger rights also apply to IC Bus services operated by DB Fernverkehr AG. Additional regulations may apply to journeys in transport associations and where regional tariffs apply.</p>
                    <p class="justify">Passenger rights are limited to claims relating directly to a delayed or cancelled train. Arriving late for an appointment, for example, does not constitute a right to claim for compensation according to the contract of carriage. The railway undertakings involved in the transport and listed on <a href="http://www.bahn.de/fahrgastrechte">www.bahn.de/fahrgastrechte</a> or <a href="http://www.fahrgastrechte.info">www.fahrgastrechte.info</a> are jointly liable for passenger claims for compensation, refund and reimbursement of expenses, provided only one contract of carriage was concluded for the transport service.</p>
                    <h3>Your passenger right in a glance</h3>
                    <!-- Nav tabs -->
                    <div class="row">
                        <div class="col-md-3">
                            <ul class="nav md-pills pills-primary flex-column" role="tablist">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#panel21" role="tab">Delay</a></li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#panel22" role="tab">Continuing journey</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#panel23" role="tab">Train Cancellation Refund</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#panel24" role="tab">Using Substitute means of transport</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#panel25" role="tab">Overnight Accomodation</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#panel26" role="tab">Complaints</a></li>
                            </ul>
                        </div>
                        <div class="col-md-9 justify">
                            <!-- Tab panels -->
                            <div class="tab-content vertical">
                                <!--Panel 1-->
                                <div class="tab-pane fade in show active" id="panel21" role="tabpanel">
                                    <h5>Compensation for delayed arrival at the destination station</h5>
                                    <p>For a delay of 60 minutes or more, you shall receive compensation amounting to 25% of the amount paid for the single journey, for a delay of 120 minutes or more 50%; for return journeys, compensation is calculated on the basis of half the ticket price.</p>
                                    <p>Holders of season tickets (e.g. weekly or monthly tickets) are entitled to lump-sum compensation for each delay of 60 minutes or longer:</p>
                                    <ul>
                                        <li>In regional and local transport: EUR 1.50 (2nd class), EUR 2.25 (1st class)</li>
                                        <li>In long-distance transport: EUR 5 (2nd class), EUR 7.50 (1st class)</li>
                                        <li>BahnCard 100: EUR 10 (2nd class), EUR 15 (1st class)</li>
                                        <p>Passengers are entitled to compensation amounting to a maximum of 25% per cent of the value of the season ticket.</p>
                                    </ul>
                                    <p>Compensation of less than EUR 4 will not be paid out. This means that holders of season tickets for regional trains (e.g. regional day ticket (original name: Länder-Tickets), weekend ticket for Germany (original name: Schönes Wochenende-Ticket)) must submit multiple claims as one application.</p>
                                </div>
                                <!--/.Panel 1-->
                                <!--Panel 2-->
                                <div class="tab-pane fade" id="panel22" role="tabpanel">
                                    <h5>Continuing Journey With A Different Train</h5>
                                    <p>If the train is expected to arrive at the destination with a delay of at least 20 minutes, you can:</p>
                                    <p>1. continue the journey at the next opportunity or at a later time on the same or a different route</p>
                                    <p>2. use a different train for which no reservation is compulsory (you are obliged to pay additionally required tickets/supplements, but you can subsequently claim for a refund of these costs). The foregoing regulation does not apply to tickets for a substantially reduced fare (e.g. regional day ticket (original name: Länder-Tickets), weekend ticket for Germany (original name: Schönes-Wochenende-Ticket).</p>
                                </div>
                                <!--/.Panel 2-->
                                <!--Panel 3-->
                                <div class="tab-pane fade" id="panel23" role="tabpanel">
                                    <h5>Refund due to abandonment or cancellation of journey resulting from a delay, train cancellation or missed connection</h5>
                                    <p>If the train is expected to arrive at the destination with a delay of at least 60 minutes, you can:</p>
                                    <ol>
                                        <li>abandon the journey and have the entire fare refunded or</li>
                                        <li>abandon the journey and have the unused section of the journey refunded in case of partial usage or</li>
                                        <li>abandon the journey if it is no longer worthwhile and return to the departure station to have the fare refunded.</li>
                                    </ol>
                                </div>
                                <!--/.Panel 3-->
                                <div class="tab-pane fade" id="panel24" role="tabpanel">
                                    <h5>Using different means of transport</h5>
                                    <p>If the railway undertaking provides the passenger with a substitute means of transport, this option shall take precedence over any alternatives organised by the passenger.</p>
                                    <p>If the train is expected to arrive at the destination station with a delay of 60 minutes or more and the scheduled time of arrival is between 00:00 and 05:00, the cost of an alternative transport will be refunded up to a maximum of EUR 80, provided the railway undertaking does not provide a substitute means of transport and the passenger was unable to contact the railway undertaking (local ticket office or information point of the railway undertaking or personnel on the train used) for reasons the railway undertaking is responsible.</p>
                                    <p>The above also applies if the last scheduled train of the day is cancelled and the passenger cannot reach the destination station by 24:00 without using a different means of transport.</p>
                                    <p>The above also applies if the railway undertaking has to provide accommodation or if the onward journey with a different means of transport is cheaper.</p>
                                </div>
                                <div class="tab-pane fade" id="panel25" role="tabpanel">
                                    <h5>Overnight Accomodation</h5>
                                    <p>If the railway undertaking provides the passenger with accommodation, this option shall always take precedence over any alternatives organised by the passenger.</p>
                                    <p>Passengers who need to seek overnight accommodation owing to a train cancellation or delay and who cannot reasonably be expected to continue their journey the same day are entitled to reimbursement of reasonable accommodation expenses, provided the railway undertaking does not provide accommodation and the passenger was unable to contact the railway undertaking (local ticket office or information point of the railway undertaking or personnel on the train used) for reasons the railway undertaking is responsible.</p>
                                </div>
                                <div class="tab-pane fade" id="panel26" role="tabpanel">
                                    <h5>Complaints, Arbitration, and national enforcement body</h5>
                                    <p>If you object to passenger rights decisions, please address any such objection to the body that made the decision.</p>
                                    <p>Please send general complaints concerning DB Fernverkehr to:<br /><br />
                                        DB Fernverkehr AG<br />
                                        Kundendialog<br />
                                        Postfach 10 06 13<br />
                                        96058 Bamberg</p>

                                    <p>Please send general complaints concerning DB Regio to:<br /><br />
                                        DB Regio AG<br />
                                        Kundendialog<br />
                                        Postfach 10 06 07<br />
                                        96058 Bamberg</p>

                                    <p>Additional contact options : <a href="contact-us.jsp"><i class="fa fa-fax"></i> Contact-us</a></p>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Nav tabs -->
                    <div class="row">
                        <h5>Passenger Right Claim Form</h5>
                        <p>We regret the inconvenience caused by the delay or cancellation of a train. Please accept our apologies and compensation in accordance with our conditions of carriage.</p>
                        <p>To ensure that you receive your compensation and/or refund as easily as possible, Deutsche Bahn offers an accessible passengers' rights claim form. You can download and complete the form and then print it out.</p>
                        <p>Please keep in mind that when claiming your passenger rights your personal information is only protected if you use the passengers' rights claim form provided on this website.</p>
                        <p>Here you can complete and print out the form: &nbsp;<a href="https://www.bahn.com/en/view/mdb/bahnintern/international/redaktion_bahn.com/mdb_256776_160414_06-passenger-rights-claim-form_en.pdf" target="_blank"><i class="fa fa-file-pdf-o"></i> Passenger Rights Claim Form (PDF 116KB)</a><br /><br />
                            Please send the form to the following address :<br /><br />
                            Servicecenter Fahrgastrechte<br />
                            60647 Frankfurt am Main<br />
                            Deutschland</p>
                    </div>
                    <div class="row">
                        <div class="text-center">
                            <img src="source/image/678px-Railteam_logo.svg.png" width="80px" alt="Railteam logo">
                            <img src="source/image/dekra.jpg" width="80px" alt="dekra logo">
                            <img src="source/image/iso%202015.png" width="80px" alt="ISO 9001-2015">
                        </div>
                    </div>
                </section>
            </div>
            
            <%@include file="includes/footer.jsp" %>
            <%@include file="includes/loginmodal.jsp" %>
            <%@include file="includes/scriptimport.jsp" %>

        </body>

        </html>