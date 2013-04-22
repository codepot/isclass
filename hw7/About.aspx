<%@ Page Title="" Language="C#" MasterPageFile="~/hw7/Hw7.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IS445HW7.hw7.About" Theme="HW7Theme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .figure {
        }

        .myPhoto {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p class="profileTitle">About Me</p>


        <table>
            <tr>
                <td>Education
     
                        <ul class="gray">
                            <li>Bachelor of Science - MIS - California State University Long Beach - 2013</li>
                            <li>Bachelor of Art - Literature - University of Montana - May 2004</li>
                            <li>Associate of Art - Accounting - Salt Lake Community College - May 2002</li>
                            <li>High School Diploma - Mountain View High School, Timaru, New Zealand - June 2000</li>
                        </ul>
                </td>
                <td><a href="http://goo.gl/V7jZZ">
                    <figure>
                        &nbsp;<asp:Image ID="ProfilePhoto" runat="server" CssClass="myPhoto" ImageAlign="Left" ImageUrl="~/hw7/resource/phuc.jpg" Width="200px" />
                    </figure>
                </a></td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Work Experience
                    
                    

                        <ul class="gray">
                            <li>Sales Clerk - January 2001 to July 2001 - Macy's - West Jordan, Utah</li>
                            <li>Office Assitant - September 2001 to December 2004 - Gravy Corp. - Billings, Montana</li>
                            <li>Farmer - June 2005 to August 2005 - Muka Green Farm - Walland, Tenessee</li>
                            <li>General Accountant - since September 2005 - Fareast Investment - Irvine, California</li>
                        </ul>
                </td>
            </tr>
            <tr>
                <td><br />Expectation
                    
                        <ul class="clear">
                            <li>After this class at <a href="http://www.csulb.edu/">CSULB</a>, I hope that I'm able to integrate jQuery into ASP.NET</li>
                        </ul>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
