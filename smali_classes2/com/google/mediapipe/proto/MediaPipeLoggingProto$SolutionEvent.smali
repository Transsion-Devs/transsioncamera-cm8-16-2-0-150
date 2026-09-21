.class public final Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/MediaPipeLoggingProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolutionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;,
        Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

.field public static final ERROR_DETAILS_FIELD_NUMBER:I = 0x6

.field public static final EVENT_NAME_FIELD_NUMBER:I = 0x2

.field public static final INVOCATION_REPORT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_CLONE_FIELD_NUMBER:I = 0x7

.field public static final SESSION_END_FIELD_NUMBER:I = 0x5

.field public static final SESSION_START_FIELD_NUMBER:I = 0x3

.field public static final SOLUTION_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private eventDetailsCase_:I

.field private eventDetails_:Ljava/lang/Object;

.field private eventName_:I

.field private solutionName_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2447
    new-instance v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;-><init>()V

    .line 2450
    sput-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    .line 2451
    const-class v1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1527
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method static synthetic access$2100()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 1

    .line 1519
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearEventDetails()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSolutionName()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearEventName()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionStart()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearInvocationReport()V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionEnd()V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearErrorDetails()V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .registers 2

    .line 1519
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->mergeSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)V
    .registers 1

    .line 1519
    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->clearSessionClone()V

    return-void
.end method

.method private clearErrorDetails()V
    .registers 3

    .line 1872
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 1873
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1874
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearEventDetails()V
    .registers 2

    const/4 v0, 0x0

    .line 1572
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1573
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    return-void
.end method

.method private clearEventName()V
    .registers 2

    .line 1674
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    const/4 v0, 0x0

    .line 1675
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    return-void
.end method

.method private clearInvocationReport()V
    .registers 3

    .line 1772
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 1773
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1774
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearSessionClone()V
    .registers 3

    .line 1922
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 1923
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1924
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearSessionEnd()V
    .registers 3

    .line 1822
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 1823
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1824
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearSessionStart()V
    .registers 3

    .line 1722
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 1723
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x0

    .line 1724
    iput-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearSolutionName()V
    .registers 2

    .line 1623
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    const/4 v0, 0x0

    .line 1624
    iput v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 1

    .line 2456
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object v0
.end method

.method private mergeErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .registers 5

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1859
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1860
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1861
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    move-result-object v0

    .line 1862
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_27

    .line 1864
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1866
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .registers 5

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1759
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1760
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1761
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    move-result-object v0

    .line 1762
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_27

    .line 1764
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1766
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .registers 5

    .line 1908
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1909
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1910
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1911
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    move-result-object v0

    .line 1912
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_27

    .line 1914
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1916
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .registers 5

    .line 1808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1809
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1810
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1811
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    move-result-object v0

    .line 1812
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_27

    .line 1814
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1816
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private mergeSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .registers 5

    .line 1708
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1709
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1710
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 1711
    iget-object v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    invoke-static {v0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    move-result-object v0

    .line 1712
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    goto :goto_27

    .line 1714
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    .line 1716
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .registers 1

    .line 2003
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;
    .registers 2

    .line 2006
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1980
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1986
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1944
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1951
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1991
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1998
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1968
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1975
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1931
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1938
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 2

    .line 1956
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;
    .registers 3

    .line 1963
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;",
            ">;"
        }
    .end annotation

    .line 2462
    sget-object v0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setErrorDetails(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;)V
    .registers 2

    .line 1850
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1851
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 1852
    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setEventName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;)V
    .registers 2

    .line 1663
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    .line 1664
    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    return-void
.end method

.method private setInvocationReport(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;)V
    .registers 2

    .line 1750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1751
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 1752
    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionClone(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;)V
    .registers 2

    .line 1900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1901
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 1902
    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionEnd(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;)V
    .registers 2

    .line 1800
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1801
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 1802
    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSessionStart(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;)V
    .registers 2

    .line 1700
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1701
    iput-object p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1702
    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    return-void
.end method

.method private setSolutionName(Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;)V
    .registers 2

    .line 1612
    invoke-virtual {p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    .line 1613
    iget p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    .line 2386
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_6e

    .line 2440
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_12
    return-object p1

    :pswitch_13
    const/4 p0, 0x1

    .line 2434
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2419
    :pswitch_19
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_35

    .line 2421
    const-class p1, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    monitor-enter p1

    .line 2422
    :try_start_20
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_31

    .line 2424
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2427
    sput-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_31

    :catchall_2e
    move-exception v0

    move-object p0, v0

    goto :goto_33

    .line 2429
    :cond_31
    :goto_31
    monitor-exit p1

    return-object p0

    :goto_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_2e

    throw p0

    :cond_35
    return-object p0

    .line 2416
    :pswitch_36
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    return-object p0

    .line 2394
    :pswitch_39
    const-string v0, "eventDetails_"

    const-string v1, "eventDetailsCase_"

    const-string v2, "bitField0_"

    const-string v3, "solutionName_"

    .line 2399
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v4

    const-string v5, "eventName_"

    .line 2401
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    const-class v7, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    const-class v8, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    const-class v9, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    const-class v10, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    const-class v11, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    .line 2408
    const-string p1, "\u0001\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000"

    .line 2412
    sget-object p2, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2391
    :pswitch_62
    new-instance p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;

    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$Builder;-><init>(Lcom/google/mediapipe/proto/MediaPipeLoggingProto$1;)V

    return-object p0

    .line 2388
    :pswitch_68
    new-instance p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;

    invoke-direct {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;-><init>()V

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_68
        :pswitch_62
        :pswitch_39
        :pswitch_36
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getErrorDetails()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;
    .registers 3

    .line 1841
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 1842
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    return-object p0

    .line 1844
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionError;

    move-result-object p0

    return-object p0
.end method

.method public getEventDetailsCase()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;
    .registers 1

    .line 1567
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent$EventDetailsCase;

    move-result-object p0

    return-object p0
.end method

.method public getEventName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;
    .registers 1

    .line 1651
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventName_:I

    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    move-result-object p0

    if-nez p0, :cond_a

    .line 1652
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;->EVENT_START:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$EventName;

    :cond_a
    return-object p0
.end method

.method public getInvocationReport()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;
    .registers 3

    .line 1741
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 1742
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    return-object p0

    .line 1744
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionInvocationReport;

    move-result-object p0

    return-object p0
.end method

.method public getSessionClone()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;
    .registers 3

    .line 1891
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 1892
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    return-object p0

    .line 1894
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionClone;

    move-result-object p0

    return-object p0
.end method

.method public getSessionEnd()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;
    .registers 3

    .line 1791
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 1792
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    return-object p0

    .line 1794
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionEnd;

    move-result-object p0

    return-object p0
.end method

.method public getSessionStart()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;
    .registers 3

    .line 1691
    iget v0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 1692
    iget-object p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetails_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    return-object p0

    .line 1694
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;->getDefaultInstance()Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionSessionStart;

    move-result-object p0

    return-object p0
.end method

.method public getSolutionName()Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;
    .registers 1

    .line 1600
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->solutionName_:I

    invoke-static {p0}, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->forNumber(I)Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    move-result-object p0

    if-nez p0, :cond_a

    .line 1601
    sget-object p0, Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;->SOLUTION_UNKNOWN:Lcom/google/mediapipe/proto/MediaPipeLoggingEnumsProto$SolutionName;

    :cond_a
    return-object p0
.end method

.method public hasErrorDetails()Z
    .registers 2

    .line 1834
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasEventName()Z
    .registers 1

    .line 1639
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasInvocationReport()Z
    .registers 2

    .line 1734
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSessionClone()Z
    .registers 2

    .line 1884
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSessionEnd()Z
    .registers 2

    .line 1784
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSessionStart()Z
    .registers 2

    .line 1684
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->eventDetailsCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasSolutionName()Z
    .registers 2

    .line 1588
    iget p0, p0, Lcom/google/mediapipe/proto/MediaPipeLoggingProto$SolutionEvent;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1519
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
