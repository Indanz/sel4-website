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
    <td class="data-mean">571</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">317</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">334</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">812</td>
    <td class="data-stddev">(8)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1649</td>
    <td class="data-stddev">(251)</td>
    <td class="data-mean">586</td>
    <td class="data-stddev">(13)</td>
    <td class="data-mean">595</td>
    <td class="data-stddev">(13)</td>
    <td class="data-mean">1248</td>
    <td class="data-stddev">(74)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake (without meltdown mitigation)</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1273</td>
    <td class="data-stddev">(204)</td>
    <td class="data-mean">382</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">388</td>
    <td class="data-stddev">(3)</td>
    <td class="data-mean">764</td>
    <td class="data-stddev">(81)</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td class="data-mean">669</td>
    <td class="data-stddev">(37)</td>
    <td class="data-mean">403</td>
    <td class="data-stddev">(5)</td>
    <td class="data-mean">418</td>
    <td class="data-stddev">(8)</td>
    <td class="data-mean">968</td>
    <td class="data-stddev">(15)</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td class="data-mean">965</td>
    <td class="data-stddev">(28)</td>
    <td class="data-mean">470</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">652</td>
    <td class="data-stddev">(73)</td>
    <td class="data-mean">1378</td>
    <td class="data-stddev">(77)</td>
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
    <td class="data-mean">838</td>
    <td class="data-stddev">(16)</td>
    <td class="data-mean">323</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">363</td>
    <td class="data-stddev">(2)</td>
    <td class="data-mean">1229</td>
    <td class="data-stddev">(13)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-4770/Haswell</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">2072</td>
    <td class="data-stddev">(421)</td>
    <td class="data-mean">598</td>
    <td class="data-stddev">(19)</td>
    <td class="data-mean">601</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">1595</td>
    <td class="data-stddev">(14)</td>
  </tr>  <tr>
    <td>x86_64</td>
    <td class="data-table-right">64</td>
    <td>i7-6700/Skylake (without meltdown mitigation)</td>
    <td class="data-table-right">3.4 GHz</td>
    <td class="data-mean">1806</td>
    <td class="data-stddev">(383)</td>
    <td class="data-mean">390</td>
    <td class="data-stddev">(7)</td>
    <td class="data-mean">409</td>
    <td class="data-stddev">(4)</td>
    <td class="data-mean">1066</td>
    <td class="data-stddev">(7)</td>
  </tr>  <tr>
    <td>Armv8a</td>
    <td class="data-table-right">64</td>
    <td>A57/Tx1/Jetson</td>
    <td class="data-table-right">1.9 GHz</td>
    <td class="data-mean">760</td>
    <td class="data-stddev">(29)</td>
    <td class="data-mean">430</td>
    <td class="data-stddev">(12)</td>
    <td class="data-mean">435</td>
    <td class="data-stddev">(8)</td>
    <td class="data-mean">1011</td>
    <td class="data-stddev">(8)</td>
  </tr>  <tr>
    <td>RV64IMAC</td>
    <td class="data-table-right">64</td>
    <td>U54-MC/SiFive Freedom U540/Hifive</td>
    <td class="data-table-right">1.5 GHz</td>
    <td class="data-mean">1968</td>
    <td class="data-stddev">(40)</td>
    <td class="data-mean">688</td>
    <td class="data-stddev">(38)</td>
    <td class="data-mean">881</td>
    <td class="data-stddev">(76)</td>
    <td class="data-mean">2588</td>
    <td class="data-stddev">(83)</td>
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
<p>This page was generated on 2024-02-06 for sel4bench-manifest <a href="https://github.com/seL4/sel4bench-manifest/blob/ecb5d4d915633a3cabc750cf5f0a6a9332281046/default.xml">ecb5d4d9</a>.</p>