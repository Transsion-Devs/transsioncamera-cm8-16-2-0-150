.class Lcom/transsion/camera/utils/MemoryUtils$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/utils/MemoryUtils;->logAvailMemoryAsync(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isAllowSlow:Z

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 109
    iput-boolean p2, p0, Lcom/transsion/camera/utils/MemoryUtils$1;->val$isAllowSlow:Z

    iput-object p3, p0, Lcom/transsion/camera/utils/MemoryUtils$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 46

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 112
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsMemoryCheckRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 113
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "logAvailMemoryAsync skipped (previous task still running)"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_1e
    :try_start_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetAvailableMemoryInternal()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfputsPrevAvailableMemory(J)V

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetUsedJavaHeapMemory()J

    move-result-wide v7

    .line 121
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v9

    .line 122
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    .line 123
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v11

    const-wide/32 v12, 0x19000000

    cmp-long v14, v7, v12

    if-lez v14, :cond_42

    move v14, v4

    goto :goto_43

    :cond_42
    move v14, v3

    :goto_43
    const-wide/32 v15, 0x1f400000

    cmp-long v15, v9, v15

    if-lez v15, :cond_4e

    move v15, v4

    :goto_4b
    move-wide/from16 v16, v12

    goto :goto_50

    :cond_4e
    move v15, v3

    goto :goto_4b

    :goto_50
    const/16 v12, 0x1f4

    if-le v2, v12, :cond_58

    move/from16 v18, v3

    move v13, v4

    goto :goto_5b

    :cond_58
    move v13, v3

    move/from16 v18, v13

    :goto_5b
    const/16 v3, 0x514

    if-le v11, v3, :cond_61

    move v3, v4

    goto :goto_63

    :cond_61
    move/from16 v3, v18

    .line 137
    :goto_63
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetisAvailable()Z

    move-result v20
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_67} :catch_f2
    .catchall {:try_start_1e .. :try_end_67} :catchall_433

    if-eqz v20, :cond_f5

    :try_start_69
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsJavaHeapDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-ge v12, v4, :cond_f5

    if-eqz v14, :cond_f5

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 139
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 140
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->runFinalization()V

    .line 141
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 142
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "exclude weak references, javaHeapSize:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformat(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,localBinders:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,proxyBinderLeak:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " time:"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetUsedJavaHeapMemory()J

    move-result-wide v7

    cmp-long v2, v7, v16

    if-lez v2, :cond_d0

    move/from16 v14, v20

    goto :goto_d2

    :cond_d0
    move/from16 v14, v18

    .line 144
    :goto_d2
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_dd

    move/from16 v13, v20

    goto :goto_df

    :cond_dd
    move/from16 v13, v18

    .line 145
    :goto_df
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v11
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_e3} :catch_f2
    .catchall {:try_start_69 .. :try_end_e3} :catchall_ed

    const/16 v3, 0x514

    if-le v11, v3, :cond_ea

    move/from16 v3, v20

    goto :goto_f7

    :cond_ea
    move/from16 v3, v18

    goto :goto_f7

    :catchall_ed
    move-exception v0

    move/from16 v1, v18

    goto/16 :goto_44a

    :catch_f2
    move-exception v0

    goto/16 :goto_436

    :cond_f5
    move/from16 v20, v4

    .line 149
    :goto_f7
    :try_start_f7
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetisAllowSlowMethod()Z

    move-result v4
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fb} :catch_f2
    .catchall {:try_start_f7 .. :try_end_fb} :catchall_433

    const-string v12, ", NativeHeap:"

    move/from16 v16, v3

    const-string v3, ", JavaHeap:"

    move/from16 v17, v4

    if-nez v17, :cond_112

    :try_start_105
    iget-boolean v4, v0, Lcom/transsion/camera/utils/MemoryUtils$1;->val$isAllowSlow:Z
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_107} :catch_f2
    .catchall {:try_start_105 .. :try_end_107} :catchall_ed

    if-eqz v4, :cond_10a

    goto :goto_112

    :cond_10a
    move-wide/from16 v21, v5

    move-wide/from16 v31, v7

    move-wide/from16 v37, v9

    goto/16 :goto_2ff

    :cond_112
    :goto_112
    :try_start_112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsLastDumpSlowTime()J

    move-result-wide v23
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_11a} :catch_f2
    .catchall {:try_start_112 .. :try_end_11a} :catchall_433

    sub-long v21, v21, v23

    const-wide/32 v23, 0x927c0

    cmp-long v4, v21, v23

    if-lez v4, :cond_10a

    .line 151
    :try_start_123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfputsLastDumpSlowTime(J)V

    .line 152
    new-instance v4, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v4}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 153
    invoke-static {v4}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    move-wide/from16 v21, v5

    .line 154
    const-string v5, "summary.total-pss"

    invoke-virtual {v4, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v23, v5

    .line 155
    const-string v5, "summary.java-heap"

    invoke-virtual {v4, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v25, v5

    .line 156
    const-string v5, "summary.native-heap"

    invoke-virtual {v4, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v27, v5

    .line 157
    const-string v5, "summary.code"

    invoke-virtual {v4, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v29, v5

    .line 158
    const-string v5, "summary.stack"

    invoke-virtual {v4, v5}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-wide/from16 v31, v7

    .line 159
    const-string v7, "summary.graphics"

    invoke-virtual {v4, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v33, v7

    .line 160
    const-string v7, "summary.system"

    invoke-virtual {v4, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v35, v7

    .line 161
    const-string v7, "summary.private-other"

    invoke-virtual {v4, v7}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v37, v9

    .line 162
    const-string v9, "summary.total-swap"

    invoke-virtual {v4, v9}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v9, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v9}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getActivityCount()I

    move-result v1

    const-wide/32 v39, 0x32000

    cmp-long v4, v29, v39

    if-lez v4, :cond_257

    move/from16 v4, v20

    goto :goto_259

    :cond_257
    move/from16 v4, v18

    :goto_259
    const-wide/16 v41, 0x1800

    cmp-long v19, v5, v41

    if-lez v19, :cond_262

    move/from16 v19, v20

    goto :goto_264

    :cond_262
    move/from16 v19, v18

    :goto_264
    const-wide/32 v41, 0x4b000

    cmp-long v41, v33, v41

    if-lez v41, :cond_26e

    move/from16 v41, v20

    goto :goto_270

    :cond_26e
    move/from16 v41, v18

    :goto_270
    cmp-long v39, v35, v39

    if-lez v39, :cond_27a

    move/from16 v39, v20

    :goto_276
    move/from16 v40, v4

    const/4 v4, 0x5

    goto :goto_27d

    :cond_27a
    move/from16 v39, v18

    goto :goto_276

    :goto_27d
    if-le v1, v4, :cond_282

    move/from16 v42, v20

    goto :goto_284

    :cond_282
    move/from16 v42, v18

    .line 169
    :goto_284
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    move-wide/from16 v43, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PSS:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v24}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static/range {v25 .. v26}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static/range {v27 .. v28}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static/range {v29 .. v30}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", Stack:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "KB, Graphics:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static/range {v33 .. v34}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", PrivateOther: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "KB, System:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static/range {v35 .. v36}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Swap:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static/range {v43 .. v44}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformatKBToMB(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Activities:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_2fe} :catch_f2
    .catchall {:try_start_123 .. :try_end_2fe} :catchall_ed

    goto :goto_309

    :goto_2ff
    move/from16 v19, v18

    move/from16 v39, v19

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v42, v41

    .line 183
    :goto_309
    :try_start_309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_30e} :catch_f2
    .catchall {:try_start_309 .. :try_end_30e} :catchall_433

    if-eqz v14, :cond_324

    .line 186
    :try_start_310
    invoke-static/range {v20 .. v20}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsJavaHeapDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const-string v5, "java_heap_count"

    move/from16 v6, v20

    invoke-static {v6, v4, v5}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smdumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z

    move-result v4
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_310 .. :try_end_323} :catch_f2
    .catchall {:try_start_310 .. :try_end_323} :catchall_ed

    goto :goto_326

    :cond_324
    move/from16 v4, v18

    .line 189
    :goto_326
    const-string v5, "binder_count"

    if-eqz v13, :cond_33c

    const/4 v6, 0x2

    .line 190
    :try_start_32b
    invoke-static {v6}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_33c

    .line 192
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsBinderDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-static {v6, v4, v5}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smdumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z

    move-result v4

    :cond_33c
    if-eqz v16, :cond_34f

    const/4 v6, 0x3

    .line 196
    invoke-static {v6}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_34f

    .line 198
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsBinderDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-static {v6, v4, v5}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smdumpHprof(ILjava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Z

    :cond_34f
    if-eqz v15, :cond_359

    const/4 v4, 0x4

    .line 202
    invoke-static {v4}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_359
    if-eqz v41, :cond_363

    const/4 v4, 0x7

    .line 205
    invoke-static {v4}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_363
    if-eqz v39, :cond_36e

    const/16 v4, 0x9

    .line 208
    invoke-static {v4}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36e
    if-eqz v19, :cond_37c

    const/16 v17, 0x5

    .line 211
    invoke-static/range {v17 .. v17}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smdumpThread()Z

    :cond_37c
    if-eqz v40, :cond_386

    const/4 v4, 0x6

    .line 215
    invoke-static {v4}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_386
    if-eqz v42, :cond_391

    const/16 v4, 0xb

    .line 218
    invoke-static {v4}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_32b .. :try_end_391} :catch_f2
    .catchall {:try_start_32b .. :try_end_391} :catchall_ed

    .line 220
    :cond_391
    :try_start_391
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4
    :try_end_395
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_395} :catch_f2
    .catchall {:try_start_391 .. :try_end_395} :catchall_433

    if-eqz v4, :cond_39e

    .line 221
    :try_start_397
    invoke-static/range {v18 .. v18}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smgetLeakTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_397 .. :try_end_39e} :catch_f2
    .catchall {:try_start_397 .. :try_end_39e} :catchall_ed

    .line 223
    :cond_39e
    :try_start_39e
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/transsion/camera/utils/MemoryUtils$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsPrevAvailableMemory()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", LeakType:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-static/range {v37 .. v38}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static/range {v31 .. v32}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$smformat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", LocalBinder:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ProxyBinder:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isAvailable:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetisAvailable()Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", javaHeapHprofCount:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsJavaHeapDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", binderHprofCount:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsBinderDumpCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", time:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v4, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_429} :catch_f2
    .catchall {:try_start_39e .. :try_end_429} :catchall_433

    .line 236
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsMemoryCheckRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_433
    move-exception v0

    const/4 v1, 0x0

    goto :goto_44a

    .line 234
    :goto_436
    :try_start_436
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_441
    .catchall {:try_start_436 .. :try_end_441} :catchall_433

    .line 236
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsMemoryCheckRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_44a
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->-$$Nest$sfgetsMemoryCheckRunning()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    throw v0
.end method
