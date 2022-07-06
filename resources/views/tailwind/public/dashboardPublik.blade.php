@extends('public.layout.appDashboard', ['title' => 'Dashboard'])
@section('meta')
<meta name="description" content="Dashboard" />
<meta name="keywords" content="Diskominfo Subang" />
<meta property="og:title" content="Dashboard" />
<meta property="og:type" content="Dashboard" />
<meta property="og:image" content="{{asset('fontend/images/grid/1.jpg')}}" />
@endsection
@section('content')
<!-- === Page Title === -->
<section id="page-title" class="page-title page-title-layout1 text-center">
    <div class="bg-img"><img src="{{asset('frontend/images/page-titles/Dinas-Ketahanan-Pangan.jpg')}}" alt="background"></div>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <h1 class="pagetitle__heading text-dark">DISKETPAN</h1>
            </div><!-- /.col-lg-12 -->
        </div><!-- /.row -->
    </div><!-- /.container -->
</section><!-- /.page-title -->

<!-- === Postingan === -->
<section id="blogGridRightSidebar" class="blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="card bg-info">
                    <div class="card-body">
                        <div class="d-flex">
                            <h3 class="font-weight-semibold mb-0 text-white">{{$pangan}}</h3>
                            <div class="list-icons ml-auto">
                                <a class="list-icons-item" data-action="reload"></a>
                            </div>
                        </div>

                        <div class="text-white">
                            Total Kelompok Pangan
                            <!-- <div class="font-size-sm opacity-75">$37,578 avg</div> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="card bg-success">
                    <div class="card-body">
                        <div class="d-flex">
                            <h3 class="font-weight-semibold mb-0 text-white">{{$kkal}}</h3>
                            <div class="list-icons ml-auto">
                                <a class="list-icons-item" data-action="reload"></a>
                            </div>
                        </div>

                        <div class="text-white">
                            Total Konsumsi Kkal Tahun {{date('Y')}}
                            <!-- <div class="font-size-sm opacity-75">$37,578 avg</div> -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-6">
                <!-- small box -->
                <div class="card bg-danger">
                    <div class="card-body">
                        <div class="d-flex">
                            <h3 class="font-weight-semibold mb-0 text-white">{{$ake}}</h3>
                            <div class="list-icons ml-auto">
                                <a class="list-icons-item" data-action="reload"></a>
                            </div>
                        </div>

                        <div class="text-white">
                            Total Konsumsi Ake Tahun {{date('Y')}}
                            <!-- <div class="font-size-sm opacity-75">$37,578 avg</div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->
        <div class="row mt-20">

            <div class="col-lg-12 col-4">
                <div class="card">
                    <div class="card-header bg-info">
                        <h6 class="font-weight-semibold text-white">Grafik Total Konsumsi Energi dan Protein Berdasarkan Tahun</h6>
                    </div>
                    <div class="card-body">
                        <canvas id="konsumsiChart"
                            style="min-height: 250px; height: 250px; max-height: 500px; max-width: 100%;"></canvas>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
    </div><!-- /.container -->
</section>
<!-- /.End Post -->

@endsection
@section('top-resource')
@endsection
@section('bottom-resource')
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script>
    $(function () {

        var konsumsiTahunData = {
            labels: {!!$labelsKonsumsiByTahun!!},
            datasets: [
            {
                label:'KKAL',
                data: {!!$rowsKkalKonsumsiByTahun!!},
                backgroundColor: '#f56954',
            },
            {
                label:'AKE',
                data: {!!$rowsAkeKonsumsiByTahun!!},
                backgroundColor: '#00a65a',
            }]
        }


        var konsumsiChartCanvas = $('#konsumsiChart').get(0).getContext('2d')
        var barKonsumsiTahun = konsumsiTahunData;
        var barKonsumsiTahunOptions = {
                scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
        //Create pie or douhnut chart
        // You can switch between pie and douhnut using the method below.
        new Chart(konsumsiChartCanvas, {
            type: 'bar',
            data: barKonsumsiTahun,
            options: barKonsumsiTahunOptions
        });
    });

</script>

@endsection
