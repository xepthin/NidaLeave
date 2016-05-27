<%@ Page Title="" Language="C#" MasterPageFile="~/Nida.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NidaLeaveWeb.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Nida <small>Leave System</small></h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-6 b-r">
                            <h3 class="m-t-none m-b">Sign in</h3>
                            <p>Sign in today for more expirience.</p>
                            <form role="form">
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" placeholder="Enter email" class="form-control" /></div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" placeholder="Password" class="form-control" /></div>
                                <div>
                                    <button class="btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Log in</strong></button>
                                    <label>
                                        <input type="checkbox" class="i-checks" />
                                        Remember me </label>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <h4>Not a member?</h4>
                            <p>You can create an account:</p>
                            <p class="text-center">
                                <a href="#"><i class="fa fa-sign-in big-icon"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Script" runat="Server">
</asp:Content>