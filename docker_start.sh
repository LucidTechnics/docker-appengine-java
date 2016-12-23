#!/usr/bin/env bash
ls -ltra
${APP_ENGINE_SDK}/bin/dev_appserver.sh --jvm_flag=-Ddatastore.default_high_rep_job_policy_unapplied_job_pct=20 \
                    --jvm_flag=-Dappengine.user.timezone=UTC \
                    --jvm_flag=-Xmx1024m \
                    -a 0.0.0.0 \
                    war