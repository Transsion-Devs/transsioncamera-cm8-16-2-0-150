.class public Lcom/transsion/hubsdk/api/os/TranTraceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_SECTION_NAME_LEN:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "TranTraceManager"

.field public static final TRACE_TAG_ACTIVITY_MANAGER:J = 0x40L

.field public static final TRACE_TAG_ADB:J = 0x400000L

.field public static final TRACE_TAG_AIDL:J = 0x1000000L

.field public static final TRACE_TAG_ALWAYS:J = 0x1L

.field public static final TRACE_TAG_APP:J = 0x1000L

.field public static final TRACE_TAG_AUDIO:J = 0x100L

.field public static final TRACE_TAG_BIONIC:J = 0x10000L

.field public static final TRACE_TAG_CAMERA:J = 0x400L

.field public static final TRACE_TAG_DALVIK:J = 0x4000L

.field public static final TRACE_TAG_DATABASE:J = 0x100000L

.field public static final TRACE_TAG_GRAPHICS:J = 0x2L

.field public static final TRACE_TAG_HAL:J = 0x800L

.field public static final TRACE_TAG_INPUT:J = 0x4L

.field public static final TRACE_TAG_NETWORK:J = 0x200000L

.field public static final TRACE_TAG_NEVER:J = 0x0L

.field public static final TRACE_TAG_NNAPI:J = 0x2000000L

.field public static final TRACE_TAG_PACKAGE_MANAGER:J = 0x40000L

.field public static final TRACE_TAG_POWER:J = 0x20000L

.field public static final TRACE_TAG_RESOURCES:J = 0x2000L

.field public static final TRACE_TAG_RRO:J = 0x4000000L

.field public static final TRACE_TAG_RS:J = 0x8000L

.field public static final TRACE_TAG_SYNC_MANAGER:J = 0x80L

.field public static final TRACE_TAG_SYSTEM_SERVER:J = 0x80000L

.field public static final TRACE_TAG_THERMAL:J = 0x8000000L

.field public static final TRACE_TAG_VIBRATOR:J = 0x800000L

.field public static final TRACE_TAG_VIDEO:J = 0x200L

.field public static final TRACE_TAG_VIEW:J = 0x8L

.field public static final TRACE_TAG_WEBVIEW:J = 0x10L

.field public static final TRACE_TAG_WINDOW_MANAGER:J = 0x20L


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncTraceBegin(JLjava/lang/String;I)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranTraceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method public asyncTraceEnd(JLjava/lang/String;I)V
    .registers 6
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranTraceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;
    .registers 3

    .line 62
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 63
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranTraceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubTraceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubTraceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubTraceManager;

    :cond_18
    return-object p1

    .line 66
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranTraceManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospTraceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranTraceManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospTraceManager;

    :cond_2b
    return-object p1
.end method

.method public traceBegin(JLjava/lang/String;)V
    .registers 5
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 87
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranTraceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public traceEnd(J)V
    .registers 4
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    .line 102
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33101:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranTraceManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/os/ITranTraceManagerAdapter;->traceEnd(J)V

    return-void
.end method
