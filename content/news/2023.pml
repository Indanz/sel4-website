<!--<title>News about seL4 and the seL4 Foundation</title>-->
<!--
    Copyright 2023 seL4 Project a Series of LF Projects, LLC.
    SPDX-License-Identifier: CC-BY-SA-4.0
-->
<div class="row">
 <div class="col">
  <h1>
    News about
    <a href="/">seL4</a>
    and the
    <a href="/Foundation">seL4 Foundation</a>
  </h1>
 </div>
 <div class="col">
<%
from os import listdir
from os.path import isfile, join
from ertos_config import cfg
import re
cfg.read('config.cfg')
newsdir = cfg.get('core', 'content_dir') + '/news/'
files =  sorted([f for f in listdir(newsdir) if re.match(r'^20[0-9][0-9]\.pml$', f)])
reflist = []
for x in files:
    link = '/news/' + x[:4]
    reflist.append('<a href="%s">%s</a>' % (link, x[:4]))
reflist = ' '.join(reflist)
%>
Older News: <%=reflist%>
 </div>
</div>

<!--
<div class="news-item tag-link" id="brief-unique-anchor-name">
  <a href="#brief-unique-anchor-name"><span class="tag-span"># </span></a> 29 Jan 2021: Raytheon joins the seL4 Foundation
</div>
<div>
 <p>

   <a href="https://www.rtx.com/">
     <img src="/Foundation/Membership/LOGOS/raytheontechnologies.svg"
	  style="width: 20%;  padding-left:10px;  float:right"
	  alt="Raytheon logo"/>
   </a>

    blah blah blah blah blah blah blah blah blah blah blah blah blah
    blah blah blah blah blah blah blah blah blah blah blah blah blah
    blah blah blah blah blah blah blah blah blah blah blah blah blah
    blah blah blah blah blah blah blah blah blah blah blah blah blah
    blah blah blah blah blah blah blah blah blah blah blah blah blah
    blah blah blah blah blah blah blah
 </p>
</div>
-->

<!----------------------------------------------------------->
<div class="news-item tag-link" id="microkit">
  <a href="#microkit"><span class="tag-span"># </span></a>
  20 November 2023: seL4 Microkit officially supported by the seL4 Foundation
</div>
<div class="news-text-container">
  <div id="floated-imgs">
    <a href="https://brkawy.com/">
      <img src="/Foundation/Membership/LOGOS/Brkawy.png" style="width: 200px; padding:20px; float: right" alt="Breakaway Consulting logo">
    </a>
    <div class="style:clear:both"></div>
      <a href="https://unsw.edu.au/">
      <img src="/Foundation/Membership/LOGOS/UNSW.svg" style="width: 200px; padding:20px; float: right" alt="UNSW logo">
      </a>
  </div>
  <p>
     The <a href="https://docs.sel4.systems/projects/microkit/">seL4 Microkit</a>, formerly known as the Core Platform, is an operating system framework on top of seL4 provides a small set of simple abstractions that ease the design and implementation of statically structured systems on seL4, while still leveraging the kernel’s benefits of security and performance. The Microkit is distributed as an SDK that integrates with the developer’s build system of choice, significantly reducing the barrier to entry for new users of seL4.
  </p>
  <p>
    The seL4 Microkit was developed in collaboration between <a href="https://brkawy.com/">Breakaway Consulting Pty Ltd</a> and <a href="https://trustworthy.systems/">Trustworthy Systems, UNSW</a>, and is now an official <a href="/Foundation"> seL4 Foundation</a> project, making it part of the seL4 eco-system.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="support-rust">
  <a href="#support-rust"><span class="tag-span"># </span></a>
    15 November 2023: Support for Rust in seL4 userspace now available
</div>
<div>
  <a href="https://www.rust-lang.org/">
    <img src="/images/rust-logo-blk.svg"
    style="width: 20%;  padding-left:10px;  float:right"
    alt="Rust logo" />
  </a>

  <p>
  For the last year, Nick Spinale, funded by the seL4 Foundation, has been developing support for the Rust programming language in seL4 userspace.
  </p>
  <p>
    Nick has created a comprehensive language support infrastructure that integrates well with the rest of the seL4 ecosystem (capDL, Microkit, sel4test) and also integrates well with what Rust programmers would expect from the language side. This work has now been accepted by the seL4 Foundation <a href="/Foundation/TSC">Technical Steering Committee</a> and can be found on <a href="https://github.com/seL4/rust-sel4">GitHub</a>. Nick’s talk at the recent seL4 summit is on <a href="https://youtu.be/J17lC124_9s?si=e8nDp-x8OLq6h1dO">seL4’s Youtube channel</a>. A demo system that uses the device driver framework, asynchronous programming in Rust and library support from the Rust ecosystem to implement a small web server is available on <a href="https://github.com/seL4/rust-microkit-http-server-demo">GitHub</a>.
  </p>
  <p>
    The overall outcome will be to allow people to write safer user-level code on top of seL4 without needing full formal verification, with a language that is receiving increasing interest and that aligns extremely well with security and safety critical embedded systems programming.
  </p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="mcs-xcalibyte">
  <a href="#mcs-xcalibyte"><span class="tag-span"># </span></a>
  6 November 2023: Progress on MCS verification thanks to XCalibyte donation
</div>
<div>

<p>
  Foundation member <a href="https://proofcraft.systems">Proofcraft</a> has
  delivered a <a href="https://proofcraft.systems/news-2023/#2023-11-06">work
  package towards the verification of the MCS variant of seL4</a>.
</p>

<p>
  Having earlier started the design-to-code refinement proof of MCS seL4, funded
  by the Foundation, Proofcraft has now delivered the completion of the proof
  framework, setting up all the infrastructure and hierarchy of theorems about
  the approximately 500 C functions of the kernel.
</p>

<p>
  This was made possible by a generous donation from Foundation member <a
  href="https://xcalibyte.com">XCalibyte</a>, for which the seL4 Foundation is
  very grateful. We are looking for <a
  href="https://sel4.systems/Foundation/Support/">further funding</a> that will
  allow completion of the verification of the MCS variant. Once verified, MCS
  will become the default configuration of seL4, bringing the highest levels of
  assurance to mixed-criticality real-time systems.
</p>

<p style="text-align: center; padding:20px">
  <a href="https://xcalibyte.com">
    <img src="/Foundation/Membership/LOGOS/xcalibyte.svg"
      style="width: 18%; padding-left:1em;"
      alt="XCalibyte logo" />
  </a>
  <a href="https://proofcraft.systems">
    <img src="/Foundation/Membership/LOGOS/proofcraft.svg"
      style="width: 20%; padding-left:1em;"
      alt="Proofcraft logo" />
  </a>
</p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-videos">
  <a href="#summit-videos"><span class="tag-span"># </span></a>
  18 October 2023: The videos and slides of the seL4 summit 2023 are available online
</div>
<div>
  <a href="/Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 20%;  padding-left:10px;  float:right"
    alt="seL4 summit" />
  </a>
  <p>
    Videos of the <a href="/Foundation/Summit/2023">seL4 summit 2023</a> are now available on the <a href="https://www.youtube.com/@seL4" target="_blank">seL4 YouTube channel</a>! Links and slides can be found on the summit <a href="../Foundation/Summit/2023/program">Program</a> and <a href="../Foundation/Summit/2023/abstracts2023">Abstracts</a> pages. Thanks to all the speakers for making the seL4 summit 2023 a great success!
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="member-ku">
  <a href="#member-ku"><span class="tag-span"># </span></a> 13 October 2023: University of Kansas joins seL4 Foundation
</div>
<div>
  <p>
   <a href="https://ku.edu/">
     <img src="/Foundation/Membership/LOGOS/ku-institute.svg"
	  style="width: 20%;  padding-left:10px;  float:right"
	  alt="KU Institute for Information Sciences logo">
   </a>
  </p>
  <p>
    The seL4 Foundation is pleased to welcome <a href="https://ku.edu/">The University of Kansas</a> as Associate <a href="/Foundation/Membership/">Member</a>. KU has collaborated with a number of seL4 Foundation members along the years, including in the DARPA CASE project, which produced a set of formal methods tools that can be applied throughout the design and build process to create seL4-based high-assurance cyber-resilient systems.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="sponsor23-dinner-nio">
  <a href="#sponsor23-dinner-nio"><span class="tag-span"># </span></a> 1 September 2023: Thanks NIO for sponsoring the seL4 Summit 2023 reception and dinner
</div>
<div>
  <p>
   <a href="https://www.nio.com">
     <img src="/Foundation/Membership/LOGOS/NIO.svg"
	  style="width: 15%;  padding-left:10px;  float:right"
	  alt="NIO logo">
   </a>
  </p>
  <p>
    The seL4 Foundation thanks <a href="https://www.nio.com">NIO</a> for sponsoring both the reception and dinner for the <a href="/Foundation/Summit/2023">seL4 Summit
    2023</a>. NIO is also a <a href="#sponsor23-nio">gold sponsor</a> of the summit.
  </p>
  <p>
    Email us at <a href="mailto:summit@sel4.systems">summit@sel4.systems</a>
    if you are interested in sponsoring the seL4 summit. More on sponsorship <a
    href="https://events.linuxfoundation.org/sel4-summit/sponsor/">here</a>.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="panellists23">
  <a href="#panellists23"><span class="tag-span"># </span></a> 30 August 2023: Panellists for seL4 summit announced
</div>
<div>
  <p>
    We are very fortunate to welcome five industry leaders to participate at the <a href="/Foundation/Summit/2023">seL4 Summit 2023</a>, in a session <a href="https://events.linuxfoundation.org/sel4-summit/program/schedule/">OS on seL4: so many options!</a>. Gapfruit, Kry10, Magnetite (MIT), and UNSW will present their views on the priorities and vision for their OS on seL4. The panel will be moderated by Todd Carpenter from Galois.
  </p>

  <div class="speakers_grid">
    <div class="speaker">
      <div class="speaker_pic">
        <img src="../../images/summit/sid.jpg" alt="Sid Hussmann" height="100"/>
      </div>
      <div class="speaker_title" style="text-align:center">
        Sid Hussmann
        <br>
        <a href="https://www.gapfruit.com/">Gapfruit</a>
      </div>
    </div>
    <div class="speaker">
      <div class="speaker_pic">
        <img src="../../images/tsc/kent.jpg" alt="Kent McLeod" height="100"/>
      </div>
      <div class="speaker_title" style="text-align:center">
        Kent McLeod
        <br>
        <a href="https://www.kry10.com/">Kry10</a>
      </div>
    </div>
    <div class="speaker">
      <div class="speaker_pic">
        <img src="../../images/summit/juliana.jpeg" alt="Juliana Furgala" height="100"/>
      </div>
      <div class="speaker_title" style="text-align:center">
        Juliana Furgala
        <br>
        <a href="https://www.ll.mit.edu/r-d/cyber-security-and-information-sciences/secure-resilient-systems-and-technology">MIT Lincoln Laboratory</a>
      </div>
    </div>
    <div class="speaker">
      <div class="speaker_pic">
        <img src="../Foundation/Board/TS-Gernot-s.jpg" alt="Gernot Heiser" height="100"/>
      </div>
      <div class="speaker_title" style="text-align:center">
        Gernot Heiser
        <br>
        <a href="https://trustworthy.systems/about/">Trustworthy Systems UNSW</a>
      </div>
    </div>
    <div class="speaker">
      <div class="speaker_pic">
        <img src="../../images/summit/todd.jpg" alt="Todd Carpenter" height="100"/>
      </div>
      <div class="speaker_title" style="text-align:center">
        Todd Carpenter, Moderator <br>
        <a href="https://galois.com/">Galois</a>
      </div>
    </div>
  </div>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="sponsor23-tii">
  <a href="#sponsor23-tii"><span class="tag-span"># </span></a> 28 August 2023: Thanks TII for being Gold Sponsor of the seL4 Summit 2023
</div>
<div>
  <p>
   <a href="https://www.tii.ae">
     <img src="/Foundation/Membership/LOGOS/TII.jpg"
	  style="width: 25%;  padding-left:10px; float:right"
	  alt="TII logo">
   </a>
  </p>
  <p>
    The seL4 Foundation thanks <a href="https://www.tii.ae/">TII</a> for
    becoming a Gold sponsor of the <a href="/Foundation/Summit/2023">seL4 Summit
    2023</a>.
  </p>
  <p>

    The Technology Innovation Institute’s (<a href="https://www.tii.ae/">TII</a>) Secure Systems Research Centre (<a href="https://www.tii.ae/secure-systems">SSRC</a>) aims to drive end-to-end security and resilience in cyber-physical and autonomous systems that will ensure safety. The research center adopts an applied research approach, emphasizing practical applications. By employing seL4 as both a microkernel and a hypervisor, SSRC seamlessly aligns its dedication to security with the foundational technology crucial to achieving its objectives. This critical technology forms the cornerstone of secure software stacks for diverse edge devices, including secure communicators and drones. TII's research not only contributes to but propels the evolution of cutting-edge high-end edge device environments. TII's SSRC focus centers on resilience, isolation, trust, and security, all with the intention of fostering a more secure digital landscape.
  </p>
  <p>
    Email us at <a href="mailto:summit@sel4.systems">summit@sel4.systems</a>
    if you are interested in sponsoring the seL4 summit. More on sponsorship <a
    href="https://events.linuxfoundation.org/sel4-summit/sponsor/">here</a>.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="sponsor23-kry10">
  <a href="#sponsor23-kry10"><span class="tag-span"># </span></a> 2 August 2023: Thanks Kry10 for being Gold Sponsor of the seL4 Summit 2023
</div>
<div>

  <p>
   <a href="https://www.kry10.com/">
     <img src="/Foundation/Membership/LOGOS/Kry10.svg"
	  style="width: 25%;  padding-left:10px;  float:right"
	  alt="Kry10 logo">
   </a>
  </p>
  <p>
    The seL4 Foundation thanks <a href="https://www.kry10.com/">Kry10</a> for
    becoming a Gold sponsor of the <a href="/Foundation/Summit/2023">seL4 Summit
    2023</a>.
  </p>
  <p>
    Kry10 offers a full-featured operating system on top of the seL4 kernel, along with tooling, services, key management and more. The Kry10 Platform is a fast and easy way to build highly secure, next-generation cyber-physical devices. It leverages the verification of seL4 to provide a secure, self-healing, truly dynamic system with minimal downtime, even during upgrades.
  </p>
  <p>
    Kry10 is an <a href="/Foundation/Services/">Endorsed Service Provider</a> of the seL4 Foundation, offering support to enable seL4-based secure projects to be affordable, maintainable, and remotely manageable.
  </p>
  <p>
    See <a href="https://events.linuxfoundation.org/sel4-summit/sponsor/">here</a> if
    you are interested in sponsoring the seL4 summit 2023.
  </p>

</div>
<!----------------------------------------------------------->
<div class="news-item tag-link" id="sponsor23-collins">
  <a href="#sponsor23-collins"><span class="tag-span"># </span></a> 11 July 2023: Thanks Collins Aerospace for being Silver Sponsor of the seL4 Summit 2023
</div>
<div>

  <p>
   <a href="https://www.collinsaerospace.com">
     <img src="/Foundation/Membership/LOGOS/Collins_Aerospace_Logo.svg"
	  style="width: 25%;  padding-left:10px;  float:right"
	  alt="Collins Aerospace logo">
   </a>
  </p>
  <p>
    The seL4 Foundation thanks <a href="https://www.collinsaerospace.com">Collins Aerospace</a> for
    becoming a Silver sponsor of the <a href="/Foundation/Summit/2023">seL4 Summit
    2023</a>.
  </p>
  <p>
   <a href="https://www.collinsaerospace.com">Collins Aerospace</a>, part of
   seL4 Foundation member <a href="https://www.rtx.com">Raytheon
   Technologies</a>, has been a long-time core participant in the seL4
   ecosystem. It was a prime contractor in the DARPA HACMS program, which
   demonstrated the seL4-based incremental cyber retrofit of autonomous military
   vehicles. This was a major milestone in the growth of seL4, demonstrating
   that it protects against cyber attacks on real systems in operation. The same
   team also led the follow-on DARPA CASE program, aiming at designed-in
   cyber-resiliency, including the seL4-based framework for verified
   initialisation and configuration of systems architectures.
  </p>
  <p>
   The <a href="/Foundation/Summit/2023">seL4 Summit 2023</a> will take place in
   Minneapolis, home town of this Collins Aerospace team involved in seL4.
  </p>
  <p>
    See <a
    href="https://events.linuxfoundation.org/sel4-summit/sponsor/">here</a> if
    you are interested in sponsoring the seL4 summit 2023.
  </p>

</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="sponsor23-nio">
  <a href="#sponsor23-nio"><span class="tag-span"># </span></a> 11 July 2023: Thanks NIO for being Gold Sponsor of the seL4 Summit 2023
</div>
<div>

  <p>
   <a href="https://www.nio.com">
     <img src="/Foundation/Membership/LOGOS/NIO.svg"
	  style="width: 15%;  padding-left:10px;  float:right"
	  alt="NIO logo">
   </a>
  </p>
  <p>
    The seL4 Foundation thanks <a href="https://www.nio.com">NIO</a> for
    becoming our first Gold sponsor of the <a href="/Foundation/Summit/2023">seL4 Summit
    2023</a>.
  </p>
  <p>
   <a href="https://www.nio.com">NIO</a> is a global EV company funded in 2015
   and that went public in the U.S. in 2018. NIO emphasizes user experience and
   technology innovation.  NIO is a strong supporter of seL4 and a premium
   member of the seL4 Foundation. It has been investing heavily on building a
   full-fledge software platform for modern vehicles based on seL4.
  </p>
  <p>
    See <a
    href="https://events.linuxfoundation.org/sel4-summit/sponsor/">here</a> if
    you are interested in sponsoring the seL4 summit 2023.
  </p>

</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-program-2023">
  <a href="#summit-program-2023"><span class="tag-span"># </span></a> 23 June 2023: The seL4 summit Program is available!
</div>
<div>
  <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
  </a>
  <p>
  Have a look at the <a href="https://sel4summit2023.sched.com/">program</a> of the <a href="../Foundation/Summit/2023">seL4 summit 2023</a>!
    We have a great line-up of interesting seL4 work, with a combination of
    technical research and development, experience reports of seL4 in the field,
    technical discussions and birds-of-a-feather sessions, as well as a training
    session on getting started with seL4.
  </p>
  <p style="text-align: center; padding:20px">
  <a href = "https://sel4summit2023.sched.com/">
    <img src="/images/summit/program-at-a-glance-2023.svg"
    alt="seL4 summit 2023 program" />
  </a>
  </p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-keynotes">
  <a href="#summit-2023-keynotes"><span class="tag-span"># </span></a> 19 June 2023: Keynotes for seL4 summit 2023 announced
</div>
<div>
  <div class="row" style="margin-left:0px; margin-right:0px">
  <p>
    We are pleased to announce that the two keynotes for the <a href="../Foundation/Summit/2023">seL4 summit 2023</a> will be <strong>Gage from NCSC</strong> and <strong>Sam Leffler from Google</strong>! Gage will talk about <a href="../Foundation/Summit/2023#abstract-gage">Scoping assurance activities with seL4</a> and Sam about <a href="../Foundation/Summit/2023#abstract-sam">CantripOS: An OS for Ambient ML Applications</a>.
  </p>
  <a href="https://www.ncsc.gov.uk/">
    <img src="/Foundation/Membership/LOGOS/NCSC.png"
      style="width: 20%; float:right;"
      alt="NCSC logo" />
  </a>
  <p>
    <strong>Gage</strong> is an Assurance Lead in NCSC with expertise in cryptography, software assurance and verification. He is part of a larger team that seeks to provide assurance and articulate risk for a wide range of products and customers. Whilst he is not a product developer himself, he has been responsible for presenting assurance cases for products that rely on seL4 to uphold security requirements.
  </p>
  </div>
  <div class="row" style="margin-left:0px; margin-right:0px">
  <a href="https://www.google.com/">
    <img src="/Foundation/Membership/LOGOS/google.svg"
    style="width: 20%; float:right;"
    alt="Google logo" />
  </a>
  <p>
    <strong>Sam Leffler</strong> has worked at Google for nearly 15 years. He was part of the original team that developed ChromeOS and the ChromeBook, was responsible for the networking components of Project Loon, and worked on various infrastructure projects before joining Project Sparrow to help build the CantripOS embedded operating system. Prior to joining Google he was an independent contractor focused on wireless networking and operating systems. Before contracting he worked for VMware, Silicon Graphics, Pixar, Lucasfilm, and the Computer System Research Group (CSR) at UC Berkeley where he was responsible for the 4.2BSD release of the UNIX operating system. At CSRG he co-designed and implemented many of the facilities found in contemporary UNIX systems including sockets, networking support (IP/TCP), reliable signals, and more.
  </p>
  </div>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="galois-joins-foundation">
  <a href="#galois-joins-foundation"><span class="tag-span"># </span></a> 29 May 2023: Galois now part of the seL4 Foundation
</div>
<div>
  <a href = "https://galois.com/">
    <img src="/Foundation/Membership/LOGOS/galois-logo.svg"
    style="width: 15%; float:right"
    alt="Galois logo" />
  </a>
  <p>
    We are pleased to have <a href="https://galois.com/">Galois</a> now part of the seL4 Foundation, following its acquisition of Adventium labs, which has been a <a href="/Foundation/Membership/">member</a> since 2020 and user of seL4 technologies for years before that. Galois develops technology to guarantee the trustworthiness of systems where failure is unacceptable. They apply cutting edge computer science and mathematics to advance the state of the art in software and hardware trustworthiness.  The seL4 Foundation looks forward to our continuing collaboration.
  </p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-register">
    <a href="#summit-2023-register"><span class="tag-span"># </span></a>
    10 May 2023: Register for the seL4 summit 2023
</div>
<div>
  <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
  </a>
  <p>
    The <a href = "../Foundation/Summit/2023">seL4 summit 2023</a> will be held in Minneapolis, USA, 19 - 21 September 2023.
  </p>
  <p>
    The seL4 summit will cover the complete seL4 ecosystem, consisting of the verified microkernel, as well as all seL4-related technology, tools, infrastructure, products, projects, and people.
  </p>
  <p>
  <p>
    Tickets include:
  </p>
  <ul>
    <li>Participation in the 3-day conference, including talks, keynotes, seL4 updates & discussions</li>
    <li>Networking with other seL4 experts and enthusiasts</li>
    <li>Reception and Dinner</li>
  </ul>
  <p>
    <strong><a href="https://events.linuxfoundation.org/sel4-summit/">Register here</a></strong>
  </p>
  <p>
    The early bird cut-off date is 18 August 2023.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="acm-award">
    <a href="#acm-award"><span class="tag-span"># </span></a>
    5 May 2023: seL4 receives the ACM Software System Award!
</div>
<div>
  <a href = "https://awards.acm.org/software-system">
    <img src="/images/acm-2023.svg"
    style="width: 40%; float:right;"
    alt="ACM Award Winners" />
  </a>
  <p>
  The <a href= "https://awards.acm.org/software-system">2022 ACM Software System Award</a> recognises seL4 as the first industrial-strength, high-performance operating system to have been the subject of a complete, mechanically-checked proof of full functional correctness, proofs of enforcement of the core security properties of integrity and confidentiality, a proof to the binary code of the kernel, and the first sound and complete worst-case execution-time analysis of a protected mode OS.
  </p>
  <p>
    The award, recognising the development of a software system that has had a lasting influence, goes to Gernot Heiser, University of New South Wales; Gerwin Klein, Proofcraft; Harvey Tuch, Google; Kevin Elphinstone, University of New South Wales; June Andronick, Proofcraft; David Cock, ETH Zurich; Philip Derrin, Qualcomm; Dhammika Elkaduwe, University of Peradeniya; Kai Engelhardt; Toby Murray, University of Melbourne; Rafal Kolanski, Proofcraft; Michael Norrish, Australian National University; Thomas Sewell, University of Cambridge; and Simon Winwood, Galois.
  </p>
  <p>
    We are committed to make sure that seL4's recognised "lasting influence" live on for the decades ahead!
  </p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-venue">
    <a href="#summit-2023-venue"><span class="tag-span"># </span></a>
    14 April 2023: Dates and venue confirmed for the <a href="../Foundation/Summit/2023/">seL4 summit 2023</a>.
</div>
<div>
  <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
  </a>
  <p>
    The <a href="../Foundation/Summit/2023">seL4 Summit 2023</a> will be held <strong>19 - 21 September 2023 at the <a href="https://www.elliotparkhotel.com/">Elliot Park Hotel</a>, Minneapolis, USA</strong>.
  </p>
  <p>
    The summit will be hosted by the Linux Foundation, and will be an in-person event.
  </p>
  <p>
    Registration details to follow soon!
  </p>
  <p>
    Remember that you have until <strong>24 April 2022</strong> to <a href="../Foundation/Summit/2023/cfp">propose a talk</a>. To propose a talk, upload an abstract of one page or less to the <strong><a href="../Foundation/Summit/2023/submit">submission portal</a></strong>.
  </p>
</div>


<!----------------------------------------------------------->
<div class="news-item tag-link" id="member-autoware">
  <a href="#member-autoware"><span class="tag-span"># </span></a>
  22 March 2023: The Autoware Foundation joins the seL4 Foundation
</div>
<div>
  <a href = "https://autoware.org/">
    <img src="/Foundation/Membership/LOGOS/autoware.svg"
    style="width: 15%; float:right"
    alt="Autoware Foundation" />
  </a>
  <p>
  The seL4 Foundation welcomes <a href = "https://autoware.org/">the Autoware Foundation</a> as a <a href="/Foundation/Membership">member</a>.
  </p>
  <p>
    The Autoware Foundation hosts the Autoware Project, the world’s leading open-source software project for autonomous driving.
  </p>
  <p>
    As a member of the seL4 Foundation, the Autoware Foundation will work with members of the seL4 Foundation to implement a safe and secure Autonomous Driving software stack based on Autoware, leveraging the formally-verified and mixed-criticality capabilities of seL4.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-cfp">
  <a href="#summit-2023-cfp"><span class="tag-span"># </span></a>
  20 February 2023: <a href="../Foundation/Summit/2023/cfp">Call For Presentations</a> for the <a href="../Foundation/Summit/2023">seL4 Summit 2023</a>
</div>
<div>
  <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
  </a>
  <h3 class="highlight">
   <a href="../Foundation/Summit/2023/cfp">Call For Presentations</a> for the <a href="../Foundation/Summit/2023">seL4 Summit 2023</a>
  </h3>
  <ul>
  <li>Share your seL4 work</li>
  <li>Share your seL4 experience</li>
  <li>Share your seL4 thoughts</li>
  </ul>
  <p>
    Check the full <a href="../Foundation/Summit/2023/cfp">Call For Presentations</a>. To propose a talk, upload an abstract of one page or less by <strong>10 April 2023</strong> to the <strong><a href="../Foundation/Summit/2023/submit">submission portal</a></strong>.
  </p>
</div>

<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-pc">
  <a href="#summit-2023-pc"><span class="tag-span"># </span></a>
  13 February 2023: Meet the Program Committee of the seL4 summit 2023
</div>
<div>
    <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
    </a>
    <p>
      We are thrilled to announce our program committee for the <a href="../Foundation/Summit/2023">seL4 Summit 2023</a>.
      Our awesome team comes from various parts of the seL4 ecosystem: users, contributors, committers, experts, advocates, researchers, and engineers.
    </p>
</div>
<div class="people_grid">
  <div class="person">
    <div class="person_pic">
      <a href="http://loonwerks.com/people/darren-cofer.html"><img src="../../../images/summit/darren.jpg" alt="Darren Cofer" width="80" /></a>
    </div>
    <div class="person_title">
      <strong><a href="http://loonwerks.com/people/darren-cofer.html">Darren Cofer
      <br>(co-chair)</a></strong>
    </div>
    <div class="person_affiliation">
      Raytheon
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="http://www.ikuz.org"><img src="../../../images/tsc/ihor.jpg" alt="Ihor Kuz" width="80" /></a>
    </div>
    <div class="person_title">
      <strong><a href="http://www.ikuz.org">Ihor Kuz
       <br>
       (co-chair)</a></strong>
    </div>
    <div class="person_affiliation">
      Kry10
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://perry.alexander.name"><img src="../../../images/summit/perry.jpg" alt="Perry Alexander" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://perry.alexander.name">Perry Alexander</a></strong>
    </div>
    <div class="person_affiliation">
      U of Kansas
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://proofcraft.systems/#june"><img src="../Foundation/Board/TS-June-s.jpg" alt="June Andronick" width="80" /></a>
    </div>
    <div class="person_title">
      <strong><a href="https://proofcraft.systems/#june">June Andronick</a></strong>
    </div>
    <div class="person_affiliation">
      Proofcraft
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://galois.com/team/todd-carpenter/"><img src="../../../images/summit/todd.jpg" alt="Todd Carpenter" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://galois.com/team/todd-carpenter/">Todd Carpenter</a></strong>
    </div>
    <div class="person_affiliation">
      Galois Inc
    </div>
  </div>

  <div class="person_no_link">
    <div class="person_pic">
      <img src="../../../images/summit/alison.jpg" alt="Alison Felizzi" width="80"/>
    </div>
    <div class="person_title">
      <strong>Alison Felizzi</strong>
    </div>
    <div class="person_affiliation">
      Kry10
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://www.linkedin.com/in/axelheider"><img src="../../../images/summit/axel.png" alt="Axel Heider" width="80" /></a>
    </div>
    <div class="person_title">
      <strong><a href="https://www.linkedin.com/in/axelheider">Axel Heider</a></strong>
    </div>
    <div class="person_affiliation">
      Hensoldt Cyber
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://trustworthy.systems/people/?cn=Gernot+Heiser"><img src="../Foundation/Board/TS-Gernot-s.jpg" alt="Gernot Heiser" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://trustworthy.systems/people/?cn=Gernot+Heiser">Gernot Heiser</a></strong>
    </div>
    <div class="person_affiliation">
      UNSW
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://trustworthy.systems/people/?cn=Lucy+Parker"><img src="../../../images/summit/lucy.jpg" alt="Lucy Parker" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://trustworthy.systems/people/?cn=Lucy+Parker">Lucy Parker</a></strong>
    </div>
    <div class="person_affiliation">
      UNSW
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://nickspinale.com"><img src="../../../images/summit/nick.jpg" alt="Nick Spinale" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://nickspinale.com">Nick Spinale</a></strong>
    </div>
    <div class="person_affiliation">
      Colias Group
    </div>
  </div>

  <div class="person">
    <div class="person_pic">
      <a href="https://www.linkedin.com/in/robbie-vanvossen-gr/"><img src="../../../images/summit/robbie.png" alt="Robbie VanVossen" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://www.linkedin.com/in/robbie-vanvossen-gr/">Robbie VanVossen</a></strong>
    </div>
    <div class="person_affiliation">
      Dornerworks
    </div>
  </div>


  <div class="person">
    <div class="person_pic">
      <a href="https://www.ncsc.gov.uk/"><img src="../../../images/summit/person-pc.svg" alt="NCSC" width="80"/></a>
    </div>
    <div class="person_title">
      <strong><a href="https://www.ncsc.gov.uk/">Martin (NCSC)</a></strong>
    </div>
    <div class="person_affiliation">
      NCSC
    </div>
  </div>

</div>



<!----------------------------------------------------------->
<div class="news-item tag-link" id="summit-2023-minneapolis">
  <a href="#summit-2023-minneapolis"><span class="tag-span"># </span></a>
 10 February 2023: The seL4 summit 2023 will be held in Minneapolis, USA
</div>
<div>
    <a href = "../Foundation/Summit/2023">
    <img src="/images/sel4-summit-logo.svg"
    style="width: 15%; float:right"
    alt="seL4 summit" />
    </a>
    <p>
      It is our pleasure to confirm that the <a href="../Foundation/Summit/2023">seL4 Summit 2023</a> will be in:
    </p>
      <div class="highlight">Minneapolis, USA, Sept/Oct 2023 (dates TBC).</div>
  <p>
    <br>
    The summit will be hosted by the <a href="https://www.linuxfoundation.org/">Linux Foundation</a>, and will be an in-person event.
  </p>
  <p>
    We will announce a Call for Presentations in the coming weeks. Stay tuned!
  </p>
</div>

<div class="news-finish">
</div>
