<!-- <title>seL4 benchmarks</title> -->
<!--
Copyright 2021 seL4 Project a Series of LF Projects, LLC.
SPDX-License-Identifier: CC-BY-SA-4.0
-->

<h1>Performance</h1>
<p>This page displays the latest benchmark numbers for seL4 from the publicly
available <a href="https://github.com/seL4/sel4bench">sel4bench repository</a>.
The following times are reported as mean and standard deviation in
the format <em>mean (std dev)</em>, both rounded to the nearest integer.</p>
<ul><li><strong>IRQ invoke</strong>: Time in cycles to invoke a user-level interrupt handler running in the same
address space as the interrupted thread.</li>
<li><strong>IPC call</strong>: Time in cycles for invoking a server in a different address space on the same core.</li>
<li><strong>IPC reply</strong>: Time in cycles for a server replying to a client in a different address space on
the same core.</li>
<li><strong>Notify</strong>: Time in cycles to send a signal from a process with priority 1 to a higher
priority (255) process in a different address space</li>
</ul><h2>Default</h2>
<table class="data-table">
  <tr>
    <th style=" width: 8ex;" colspan="1">ISA</th>
    <th style="text-align: center; width: 4ex;" colspan="1">Mode</th>
    <th style=" width: 40%;" colspan="1">Core/SoC/Board</th>
    <th style="text-align: center; width: 8ex;" colspan="1">Clock</th>
    <th style="text-align: center;" colspan="2">IRQ Invoke</th>
    <th style="text-align: center;" colspan="2">IPC call</th>
    <th style="text-align: center;" colspan="2">IPC reply</th>
    <th style="text-align: center;" colspan="2">Notify</th>
  </tr>  <tr>
    <td>Armv7a</td>
    <td class="data-table-right">32</td>
    <td>A9/i.MX6/Sabre</td>
    <td class="data-table-right">1.0 GHz</td>
    <td class="data-mean">570</td>
    <td class="data-stddev">(13)</td>
    <td class="data-mean">316</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">336</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">820</td>
    <td class="data-stddev">(8)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1647</td>
    <td class="data-stddev">(250)</td>
    <td class="data-mean">584</td>
    <td class="data-stddev">(13)</td>
    <td class="data-mean">593</td>
    <td class="data-stddev">(13)</td>
    <td class="data-mean">1251</td>
    <td class="data-stddev">(75)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake (without meltdown mitigation)</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1250</td>
    <td class="data-stddev">(202)</td>
    <td class="data-mean">381</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">387</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">763</td>
    <td class="data-stddev">(82)</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td class="data-mean">667</td>
    <td class="data-stddev">(40)</td>
    <td class="data-mean">404</td>
    <td class="data-stddev">(8)</td>
    <td class="data-mean">415</td>
    <td class="data-stddev">(1)</td>
    <td class="data-mean">963</td>
    <td class="data-stddev">(7)</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td class="data-mean">989</td>
    <td class="data-stddev">(83)</td>
    <td class="data-mean">469</td>
    <td class="data-stddev">(8)</td>
    <td class="data-mean">630</td>
    <td class="data-stddev">(9)</td>
    <td class="data-mean">1359</td>
    <td class="data-stddev">(64)</td>
  </tr></table>

<h2>MCS</h2>
<table class="data-table">
  <tr>
    <th style=" width: 8ex;" colspan="1">ISA</th>
    <th style="text-align: center; width: 4ex;" colspan="1">Mode</th>
    <th style=" width: 40%;" colspan="1">Core/SoC/Board</th>
    <th style="text-align: center; width: 8ex;" colspan="1">Clock</th>
    <th style="text-align: center;" colspan="2">IRQ Invoke</th>
    <th style="text-align: center;" colspan="2">IPC call</th>
    <th style="text-align: center;" colspan="2">IPC reply</th>
    <th style="text-align: center;" colspan="2">Notify</th>
  </tr>  <tr>
    <td>Armv7a</td>
    <td class="data-table-right">32</td>
    <td>A9/i.MX6/Sabre</td>
    <td class="data-table-right">1.0 GHz</td>
    <td class="data-mean">832</td>
    <td class="data-stddev">(17)</td>
    <td class="data-mean">323</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">363</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">1212</td>
    <td class="data-stddev">(14)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">2035</td>
    <td class="data-stddev">(430)</td>
    <td class="data-mean">603</td>
    <td class="data-stddev">(18)</td>
    <td class="data-mean">600</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">1596</td>
    <td class="data-stddev">(12)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake (without meltdown mitigation)</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1712</td>
    <td class="data-stddev">(337)</td>
    <td class="data-mean">390</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">409</td>
    <td class="data-stddev">(4)</td>
    <td class="data-mean">1066</td>
    <td class="data-stddev">(7)</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td class="data-mean">759</td>
    <td class="data-stddev">(25)</td>
    <td class="data-mean">429</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">429</td>
    <td class="data-stddev">(4)</td>
    <td class="data-mean">1003</td>
    <td class="data-stddev">(3)</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td class="data-mean">1965</td>
    <td class="data-stddev">(38)</td>
    <td class="data-mean">678</td>
    <td class="data-stddev">(14)</td>
    <td class="data-mean">908</td>
    <td class="data-stddev">(109)</td>
    <td class="data-mean">2577</td>
    <td class="data-stddev">(80)</td>
  </tr></table>

<h2>Compilation Details</h2>
<p>All benchmarks were built using the trustworthy-systems/sel4
docker image from the <a href="https://github.com/seL4/seL4-CAmkES-L4v-dockerfiles">seL4
docker file repository</a></p><h3>Default</h3>
<table class="data-table">
  <tr>
    <th>ISA</th>
    <th>Mode</th>
    <th>Core/SoC/Board</th>
    <th>Clock</th>
    <th>Compiler</th>
    <th>Build command</th>
  </tr>  <tr>
    <td>Armv7a</td>
    <td class="data-table-right">32</td>
    <td>A9/i.MX6/Sabre</td>
    <td class="data-table-right">1.0 GHz</td>
    <td>arm-linux-gnueabi-gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DAARCH32=TRUE -DPLATFORM=sabre</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td>gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DPLATFORM=x86_64</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake</td>
    <td class="data-table-right">3.4 GHz</td>
    <td>gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DKernelSkimWindow=FALSE -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DPLATFORM=x86_64</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td>aarch64-linux-gnu-gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DAARCH64=TRUE -DPLATFORM=tx1</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td>riscv64-unknown-elf-gcc GNU 8.3.0</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=FALSE -DFAULT=FALSE -DRISCV64=TRUE -DPLATFORM=hifive</td>
  </tr></table>

<h3>MCS</h3>
<table class="data-table">
  <tr>
    <th>ISA</th>
    <th>Mode</th>
    <th>Core/SoC/Board</th>
    <th>Clock</th>
    <th>Compiler</th>
    <th>Build command</th>
  </tr>  <tr>
    <td>Armv7a</td>
    <td class="data-table-right">32</td>
    <td>A9/i.MX6/Sabre</td>
    <td class="data-table-right">1.0 GHz</td>
    <td>arm-linux-gnueabi-gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DAARCH32=TRUE -DPLATFORM=sabre -DMCS=TRUE</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td>gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DPLATFORM=x86_64 -DMCS=TRUE</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake</td>
    <td class="data-table-right">3.4 GHz</td>
    <td>gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DKernelSkimWindow=FALSE -DMCS=TRUE -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DPLATFORM=x86_64</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td>aarch64-linux-gnu-gcc GNU 10.2.1</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=TRUE -DFAULT=TRUE -DAARCH64=TRUE -DPLATFORM=tx1 -DMCS=TRUE</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td>riscv64-unknown-elf-gcc GNU 8.3.0</td>
    <td class="monospace">init-build.sh -DFASTPATH=TRUE -DHARDWARE=FALSE -DFAULT=FALSE -DRISCV64=TRUE -DPLATFORM=hifive -DMCS=TRUE</td>
  </tr></table>

<h2>Source Code</h2>
<p>This page was generated on 2024-01-28 for sel4bench-manifest <a href="https://github.com/seL4/sel4bench-manifest/blob/3ce279c3998bf9b1c1a93f1a4482003360af6a6f/default.xml">3ce279c3</a>.</p>