<%@ Page Title="" Language="C#" MasterPageFile="~/Nida.Master" AutoEventWireup="true" CodeBehind="OnlineLeave.aspx.cs" Inherits="NidaLeaveWeb.OnlineLeave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="modal inmodal" id="modalLeaveRequest" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content animated bounceInRight">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="leaveTitle"></h4>
                </div>
                <div class="modal-body" style="height: 280px;">
                    <div class="row form-group">
                        <div class="col-md-2 b-r text-right">
                            ชื่อ
                        </div>
                        <div class="col-md-10">
                            นาย ทินกร ลือจันดา
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 b-r text-right">
                            แผนก
                        </div>
                        <div class="col-md-10">
                            IT
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 b-r text-right">
                            ตำแหน่ง
                        </div>
                        <div class="col-md-10">
                            Programmer
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 b-r text-right">
                            วันที่
                        </div>
                        <div class="col-md-10">
                            <div class="col-md-6">
                                <div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control datepick" value="03/04/2014" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group date">
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                    <input type="text" class="form-control datepick" value="03/04/2014" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 b-r text-right">
                            หมายเหตุ
                        </div>
                        <div class="col-md-10">
                            <textarea class="form-control"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="">
                                <div class="ibox-content">
                                    <table class="table" style="margin-bottom: 0px;">
                                        <tbody>
                                            <tr>
                                                <td>ชื่อ : นาย ทินกร ลือจันดา</td>
                                                <td>ชื่อเล่น : ทิน</td>
                                                <td rowspan="3" width="140px;">
                                                    <img class="img-rounded" src="img/a1.jpg" /></td>
                                            </tr>
                                            <tr>
                                                <td>แผนก : IT</td>
                                                <td>ตำแหน่ง : Programmer</td>
                                            </tr>
                                            <tr>
                                                <td>เริ่มงาน : <span id="startDate"></span></td>
                                                <td>อายุงาน : <span id="workAge"></span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Nida <small>Online Leave System</small></h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="">
                                <div class="ibox-content">
                                    <table id="tbLeave" class="table">
                                        <thead>
                                            <tr>
                                                <th>ประเภทการลา</th>
                                                <th>สิทธิ์การลาต่อปี</th>
                                                <th>เอกสารที่ใช้ในการลา</th>
                                                <th>จ่ายค่าจ้างระหว่างลา</th>
                                                <th>จำนวนสิทธิ์การลาปีนี้</th>
                                                <th>ขอลา</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>ลาคลอดบุตร</td>
                                                <td>20</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 5%" class="progress-bar progress-bar-danger">
                                                            <span>1</span>
                                                        </div>
                                                        <div style="width: 95%" class="progress-bar progress-bar-primary">
                                                            <span>19</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาคลอดบุตร');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาไปช่วยเหลือภริยาที่คลอดบุตร</td>
                                                <td>40</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 20%" class="progress-bar progress-bar-danger">
                                                            <span>4</span>
                                                        </div>
                                                        <div style="width: 80%" class="progress-bar progress-bar-primary">
                                                            <span>36</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาไปช่วยเหลือภริยาที่คลอดบุตร');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาพักร้อน</td>
                                                <td>30</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>30</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาพักร้อน');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาอุปสมบทหรือลาไปประกอบพิธีฮัจย์</td>
                                                <td>10</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาอุปสมบทหรือลาไปประกอบพิธีฮัจย์');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาเข้ารับการตรจเลือกหรือเข้ารับการเตรียมพล</td>
                                                <td>20</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 5%" class="progress-bar progress-bar-warning">
                                                            <span>1</span>
                                                        </div>
                                                        <div style="width: 15%" class="progress-bar progress-bar-danger">
                                                            <span>3</span>
                                                        </div>
                                                        <div style="width: 80%" class="progress-bar progress-bar-primary">
                                                            <span>16</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาเข้ารับการตรจเลือกหรือเข้ารับการเตรียมพล');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาศึกษาฝึกอบรม[ต่างประเทศ]</td>
                                                <td>10</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาศึกษาฝึกอบรม[ต่างประเทศ]');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาศึกษาฝึกอบรม[ในประเทศ]</td>
                                                <td>10</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาศึกษาฝึกอบรม[ในประเทศ]');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาไปปฏิบัติงานในองค์การระหว่างประเทศ</td>
                                                <td>10</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาไปปฏิบัติงานในองค์การระหว่างประเทศ');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาติดตามคู่สมรส</td>
                                                <td>10</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาติดตามคู่สมรส');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>ลาไปฟื้นฟูสมรรถภาพด้านอาชีพ</td>
                                                <td>30</td>
                                                <td>-</td>
                                                <td>จ่าย</td>
                                                <td>
                                                    <div class="progress progress-striped active" style="margin: 0px;">
                                                        <div style="width: 100%" class="progress-bar progress-bar-primary">
                                                            <span>30</span>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <button class="btn btn-success" style="padding: 0px 12px; margin: 0px;" data-toggle="modal" onclick="leaveRequest('ลาไปฟื้นฟูสมรรถภาพด้านอาชีพ');"><i class="fa fa-book"></i></button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="Server">
    <script type="text/javascript">
        var d = new Date(2014, 4, 1);
        $("#startDate").text(convertDate(d));
        $("#workAge").text(getAge(d));

        $(document).ready(function () {
            leaveList();
        });

        var htmlBody = "";
        htmlBody += "";

        $("#tbLeave tboody").append(htmlBody);

        function leaveRequest(leaveType) {
            $("#leaveTitle").text(leaveType);
            $("#modalLeaveRequest").modal("show");
        }

        $('.datepick').datepicker({
            todayBtn: "linked",
            keyboardNavigation: false,
            forceParse: false,
            calendarWeeks: true,
            autoclose: true,
            format: "dd/mm/yyyy"
        });

        function leaveList() {
            debugger
            var url = "http://localhost:4568/OnlineLeave.aspx/GetLeaveList";

            $.ajax({
                url: url,
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: null,
                async: false,
                success: function (result) {
                    vObj = $.parseJSON(result);
                },
                error: function () {
                }
            });

        }
    </script>
</asp:Content>
