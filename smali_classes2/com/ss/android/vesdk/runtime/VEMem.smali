.class public Lcom/ss/android/vesdk/runtime/VEMem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENTER_EDIT:I = 0x2

.field public static final ENTER_PBULISH:I = 0x4

.field public static final ENTER_RECORD:I = 0x0

.field public static final LEAVE_EDIT:I = 0x3

.field public static final LEAVE_PBULISH:I = 0x5

.field public static final LEAVE_RECORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VEMem"

.field private static sInstance:Lcom/ss/android/vesdk/runtime/VEMem;


# instance fields
.field private final MEM_THRESHOLD:I

.field private mEnableMemoryMode:Z

.field private mEnableUploadMemSize:Z

.field private mFirstTimeEnterRecord:Z

.field private mIsArm64v8a:Z

.field private mIsLocalTest:Z

.field private mLowMemThreshold:I

.field private mTotalVirtualSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsLocalTest:Z

    const/16 v1, 0x1000

    .line 17
    iput v1, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mTotalVirtualSize:I

    .line 19
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableUploadMemSize:Z

    .line 21
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableMemoryMode:Z

    const/16 v1, 0x1f4

    .line 23
    iput v1, p0, Lcom/ss/android/vesdk/runtime/VEMem;->MEM_THRESHOLD:I

    .line 25
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsArm64v8a:Z

    const/16 v1, 0x12c

    .line 29
    iput v1, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mLowMemThreshold:I

    const/4 v2, 0x1

    .line 31
    iput-boolean v2, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mFirstTimeEnterRecord:Z

    .line 49
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "ve_enable_upload_virtual_mem_size"

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableUploadMemSize:Z

    .line 50
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "ve_enable_memory_mode"

    invoke-virtual {v2, v3, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableMemoryMode:Z

    .line 51
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v2

    const-string v3, "ve_low_memory_threshold"

    invoke-virtual {v2, v3, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mLowMemThreshold:I

    .line 56
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpu_abi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VEMem"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/16 v0, 0xc00

    .line 61
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mTotalVirtualSize:I

    .line 62
    const-string v0, "set mTotalVirtualSize to 3072MB"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_72
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->isArm64()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsArm64v8a:Z

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VEMem;
    .registers 2

    .line 203
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEMem;->sInstance:Lcom/ss/android/vesdk/runtime/VEMem;

    if-nez v0, :cond_19

    .line 204
    const-class v0, Lcom/ss/android/vesdk/runtime/VEMem;

    monitor-enter v0

    .line 205
    :try_start_7
    sget-object v1, Lcom/ss/android/vesdk/runtime/VEMem;->sInstance:Lcom/ss/android/vesdk/runtime/VEMem;

    if-nez v1, :cond_15

    .line 206
    new-instance v1, Lcom/ss/android/vesdk/runtime/VEMem;

    invoke-direct {v1}, Lcom/ss/android/vesdk/runtime/VEMem;-><init>()V

    sput-object v1, Lcom/ss/android/vesdk/runtime/VEMem;->sInstance:Lcom/ss/android/vesdk/runtime/VEMem;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 208
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 211
    :cond_19
    :goto_19
    sget-object v0, Lcom/ss/android/vesdk/runtime/VEMem;->sInstance:Lcom/ss/android/vesdk/runtime/VEMem;

    return-object v0
.end method


# virtual methods
.method public getVirtualMemSize()D
    .registers 3

    .line 73
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getVirtualMemInfo()D

    move-result-wide v0

    return-wide v0
.end method

.method public inLowMemMode()Z
    .registers 8

    .line 179
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableMemoryMode:Z

    const/4 v1, 0x0

    const-string v2, "VEMem"

    if-nez v0, :cond_d

    .line 180
    const-string p0, "memory mode disabled"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 183
    :cond_d
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsArm64v8a:Z

    if-eqz v0, :cond_17

    .line 184
    const-string p0, "cpu_abi is arm64-v8a, virtual mem info is unnecessary"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 188
    :cond_17
    iget v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mTotalVirtualSize:I

    int-to-double v3, v0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEMem;->getVirtualMemSize()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 190
    iget v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mLowMemThreshold:I

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_46

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In low memory mode: free memory size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mLowMemThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_46
    return v1
.end method

.method public isArm64()Z
    .registers 1

    .line 159
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsArm64v8a:Z

    return p0
.end method

.method public setIsLocalTest(Z)V
    .registers 2

    .line 168
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsLocalTest:Z

    return-void
.end method

.method public uploadVirtualMemSize(I)V
    .registers 10

    .line 82
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mEnableUploadMemSize:Z

    const-string v1, "VEMem"

    if-nez v0, :cond_c

    .line 83
    const-string p0, "upload mem size is disabled"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_c
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEMem;->mIsArm64v8a:Z

    if-eqz v0, :cond_16

    .line 87
    const-string p0, "cpu_abi is arm64-v8a, virtual mem info is unnecessary"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 91
    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEMem;->getVirtualMemSize()D

    move-result-wide v4

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get virtual mem size cost "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v6, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmpg-double p0, v4, v2

    if-gtz p0, :cond_44

    return-void

    :cond_44
    const/4 p0, 0x0

    if-eqz p1, :cond_78

    const/4 v0, 0x1

    if-eq p1, v0, :cond_72

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_66

    const/4 v0, 0x4

    if-eq p1, v0, :cond_60

    const/4 v0, 0x5

    if-eq p1, v0, :cond_59

    .line 102
    const-string p0, ""

    goto :goto_7e

    .line 131
    :cond_59
    const-string p1, "te_composition_leave_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    :goto_5e
    move-object p0, p1

    goto :goto_7e

    .line 126
    :cond_60
    const-string p1, "te_composition_enter_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    goto :goto_5e

    .line 121
    :cond_66
    const-string p1, "te_edit_leave_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    goto :goto_5e

    .line 116
    :cond_6c
    const-string p1, "te_edit_enter_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    goto :goto_5e

    .line 111
    :cond_72
    const-string p1, "te_record_leave_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    goto :goto_5e

    .line 106
    :cond_78
    const-string p1, "te_record_enter_virtual_memory_size"

    invoke-static {p0, p1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    goto :goto_5e

    .line 136
    :goto_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " virtual mem size "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload virtual mem size cost "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v6

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
