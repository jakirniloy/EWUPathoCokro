<?php require_once 'header.php';
use App\classes\Session;
if (isset($_POST['msg-btn'])) {
    $ob = new \App\classes\Mail();
    $ob->sendMail($_POST);
}
?>

<div class="page-title lb single-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <h2><i class="fa fa-envelope-open-o bg-orange"></i> Contact us <small class="hidden-xs-down hidden-sm-down">পাঠচক্র - ইস্ট ওয়েস্ট বিশ্ববিদ্যালয় </small></h2>
            </div><!-- end col -->
            <div class="col-lg-4 col-md-4 col-sm-12 hidden-xs-down hidden-sm-down">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                    <li class="breadcrumb-item active">Contact</li>
                </ol>
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</div>
<section class="section wb">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-wrapper">
                    <div class="row">
                        <div class="col-lg-5">
                            <h4>পাঠচক্র</h4>
                            <p>লিখতে ভালোবাসেন? কবিতায় অনুভূতি গাঁথেন প্রায়ই? নাম‌ না জানা অনুভূতিগুলোর অবাধ্য আচরণে গোটা‌ কয়েক চিঠি নিশ্চয়ই লেখা হয়ে গেছে? কিংবা কোনো ছোট গল্প? হ্যাঁ, আপনিই সে, যাঁর সমাদরের জন্য পাঠচক্র হাজির বাংলা সাহিত্যের বিকাশে এই গ্রুপটি নিয়ে।
যেসব গল্প এতোদিন‌ সংকোচে ডায়েরির পাতায় জমে ছিলো, এবার তা আমাদের সাথে শেয়ার করুন ,‌ আমরা তা সকল জ্ঞান পিপাষুর কাছে ছড়িয়ে দিব ।
লেখনির যথাযোগ্য সমাদৃত হওয়াই তো লেখকের প্রাপ্তি, আপনাকে এই প্রাপ্তি পাইয়ে দেয়াই পাঠচক্রের স্বপ্ন। এই স্বপ্ন বাস্তবায়নে "পাঠচক্রের" এ আয়োজন।
গ্রুপটি সজ্জিত হবে সাহিত্যের নানান দিক নিয়ে। ছোট্ট পরিসর, কিন্তু স্বপ্নটা বিশাল,‌ স্বপ্ন পূরণে আপনার শামিল হওয়া আমাদের একান্ত কাম্য। চলুন একসাথে সাহিত্য সাগরে ডুব দিই।
ক্যাটাগরি :<br>
----------------------<br>
১. কবিতা<br>
২. ছোটগল্প<br>
৩. প্রবন্ধ<br>
৪. ভ্রমনকাহিনি<br>
৫. রম্যরচনা<br>
৬. চিঠি<br>
৭. বইপত্র পর্যালোচনা<br>
৮৷ বই রিভিউ<br>
৯৷ মৌলিক যে কোন লিখা<br>
১০৷ অন্যান্য<br>

প্রত্যেক সাহিত্য প্রেমিকের জন্য গ্রুপটি সব সময়ের জন্যই উন্মুক্ত ৷ বিকশিত হোক বাংলা সাহিত্য ৷ চলুন একসাথে বাংলা সাহিত্যের হারানো গৌরব ফিরিয়ে আনি ৷
শুভেচ্ছান্তে,
পাঠচক্র ইষ্ট ওয়েষ্ট ইউনিভার্সিটি পরিবার</p>

                            

                            
                        </div>
                        
                        <div class="col-lg-7">
                            <span style="color: #0b2e13"><?= Session::get("succesMail") ?></span>
                            <span style="color: red"><?= Session::get("failMail") ?></span>
                            <form class="form-wrapper" action="" method="post" >
                                <div class="form-group">
                                    <input type="text" required class="form-control" placeholder="Your name" name="name" style="margin-bottom: 0px;">
                                    <span style="margin: 0px;color: red"><?= Session::get("emptyName") ?></span>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Email address" name="email" style="margin-bottom: 0px;>
                               <span style="margin: 0px;color: red"><?= Session::get("emptyEmail")?></span>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Phone" name="phone" style="margin-bottom: 0px;>
                                    <span style="margin: 0px;color: red"><?= Session::get("emptyPhone") ?></span>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Subject" name="subject" style="margin-bottom: 0px;>
                                    <span style="margin: 0px;color: red"><?= Session::get("emptySubject") ?></span>
                                </div>
                                <textarea class="form-control" placeholder="Your message" name="message" ></textarea>
                                <span style="margin: 0px;color: red"><?= Session::get("emptymsg") ?></span>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary" name="msg-btn">Send <i class="fa fa-envelope-open-o"></i></button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div><!-- end page-wrapper -->
            </div><!-- end col -->
        </div><!-- end row -->
    </div><!-- end container -->
</section>
<?php
Session::unsetSession("emptyName");
Session::unsetSession("emptyEmail");
Session::unsetSession("emptyPhone");
Session::unsetSession("emptySubject");
Session::unsetSession("succesMail");
Session::unsetSession("failMail");
?>
<?php require_once 'footer.php' ?>
