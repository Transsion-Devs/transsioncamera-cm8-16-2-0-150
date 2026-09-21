.class public final Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/proto/CalculatorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfilerConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;",
        ">;",
        "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfigOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALCULATOR_FILTER_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

.field public static final ENABLE_INPUT_OUTPUT_LATENCY_FIELD_NUMBER:I = 0x3

.field public static final ENABLE_PROFILER_FIELD_NUMBER:I = 0x4

.field public static final ENABLE_STREAM_LATENCY_FIELD_NUMBER:I = 0x5

.field public static final HISTOGRAM_INTERVAL_SIZE_USEC_FIELD_NUMBER:I = 0x1

.field public static final NUM_HISTOGRAM_INTERVALS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRACE_ENABLED_FIELD_NUMBER:I = 0x10

.field public static final TRACE_EVENT_TYPES_DISABLED_FIELD_NUMBER:I = 0x8

.field public static final TRACE_LOG_CAPACITY_FIELD_NUMBER:I = 0x7

.field public static final TRACE_LOG_COUNT_FIELD_NUMBER:I = 0xa

.field public static final TRACE_LOG_DISABLED_FIELD_NUMBER:I = 0xf

.field public static final TRACE_LOG_DURATION_EVENTS_FIELD_NUMBER:I = 0xd

.field public static final TRACE_LOG_INSTANT_EVENTS_FIELD_NUMBER:I = 0x11

.field public static final TRACE_LOG_INTERVAL_COUNT_FIELD_NUMBER:I = 0xe

.field public static final TRACE_LOG_INTERVAL_USEC_FIELD_NUMBER:I = 0xb

.field public static final TRACE_LOG_MARGIN_USEC_FIELD_NUMBER:I = 0xc

.field public static final TRACE_LOG_PATH_FIELD_NUMBER:I = 0x9

.field public static final USE_PACKET_TIMESTAMP_FOR_ADDED_PACKET_FIELD_NUMBER:I = 0x6


# instance fields
.field private calculatorFilter_:Ljava/lang/String;

.field private enableInputOutputLatency_:Z

.field private enableProfiler_:Z

.field private enableStreamLatency_:Z

.field private histogramIntervalSizeUsec_:J

.field private numHistogramIntervals_:J

.field private traceEnabled_:Z

.field private traceEventTypesDisabledMemoizedSerializedSize:I

.field private traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

.field private traceLogCapacity_:J

.field private traceLogCount_:I

.field private traceLogDisabled_:Z

.field private traceLogDurationEvents_:Z

.field private traceLogInstantEvents_:Z

.field private traceLogIntervalCount_:I

.field private traceLogIntervalUsec_:J

.field private traceLogMarginUsec_:J

.field private traceLogPath_:Ljava/lang/String;

.field private usePacketTimestampForAddedPacket_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 5637
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;-><init>()V

    .line 5640
    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    .line 5641
    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    .line 4022
    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabledMemoizedSerializedSize:I

    .line 3673
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    .line 3674
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    .line 3675
    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4700()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 1

    .line 3667
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setHistogramIntervalSizeUsec(J)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearHistogramIntervalSizeUsec()V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setNumHistogramIntervals(J)V

    return-void
.end method

.method static synthetic access$5100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearNumHistogramIntervals()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setEnableInputOutputLatency(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearEnableInputOutputLatency()V

    return-void
.end method

.method static synthetic access$5400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setEnableProfiler(Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearEnableProfiler()V

    return-void
.end method

.method static synthetic access$5600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setEnableStreamLatency(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearEnableStreamLatency()V

    return-void
.end method

.method static synthetic access$5800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setUsePacketTimestampForAddedPacket(Z)V

    return-void
.end method

.method static synthetic access$5900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearUsePacketTimestampForAddedPacket()V

    return-void
.end method

.method static synthetic access$6000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogCapacity(J)V

    return-void
.end method

.method static synthetic access$6100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogCapacity()V

    return-void
.end method

.method static synthetic access$6200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;II)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceEventTypesDisabled(II)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->addTraceEventTypesDisabled(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/Iterable;)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->addAllTraceEventTypesDisabled(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceEventTypesDisabled()V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/String;)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogPath()V

    return-void
.end method

.method static synthetic access$6800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogPathBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogCount(I)V

    return-void
.end method

.method static synthetic access$7000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogCount()V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogIntervalUsec(J)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogIntervalUsec()V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;J)V
    .registers 3

    .line 3667
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogMarginUsec(J)V

    return-void
.end method

.method static synthetic access$7400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogMarginUsec()V

    return-void
.end method

.method static synthetic access$7500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogDurationEvents(Z)V

    return-void
.end method

.method static synthetic access$7600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogDurationEvents()V

    return-void
.end method

.method static synthetic access$7700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;I)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogIntervalCount(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogIntervalCount()V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogDisabled(Z)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogDisabled()V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceEnabled(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceEnabled()V

    return-void
.end method

.method static synthetic access$8300(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Z)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setTraceLogInstantEvents(Z)V

    return-void
.end method

.method static synthetic access$8400(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearTraceLogInstantEvents()V

    return-void
.end method

.method static synthetic access$8500(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Ljava/lang/String;)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setCalculatorFilter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)V
    .registers 1

    .line 3667
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->clearCalculatorFilter()V

    return-void
.end method

.method static synthetic access$8700(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 3667
    invoke-direct {p0, p1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->setCalculatorFilterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllTraceEventTypesDisabled(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4066
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->ensureTraceEventTypesDisabledIsMutable()V

    .line 4067
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTraceEventTypesDisabled(I)V
    .registers 2

    .line 4053
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->ensureTraceEventTypesDisabledIsMutable()V

    .line 4054
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearCalculatorFilter()V
    .registers 2

    .line 4537
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getCalculatorFilter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    return-void
.end method

.method private clearEnableInputOutputLatency()V
    .registers 2

    const/4 v0, 0x0

    .line 3809
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableInputOutputLatency_:Z

    return-void
.end method

.method private clearEnableProfiler()V
    .registers 2

    const/4 v0, 0x0

    .line 3847
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableProfiler_:Z

    return-void
.end method

.method private clearEnableStreamLatency()V
    .registers 2

    const/4 v0, 0x0

    .line 3891
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableStreamLatency_:Z

    return-void
.end method

.method private clearHistogramIntervalSizeUsec()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 3718
    iput-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->histogramIntervalSizeUsec_:J

    return-void
.end method

.method private clearNumHistogramIntervals()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 3759
    iput-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->numHistogramIntervals_:J

    return-void
.end method

.method private clearTraceEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 4443
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEnabled_:Z

    return-void
.end method

.method private clearTraceEventTypesDisabled()V
    .registers 2

    .line 4078
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearTraceLogCapacity()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 3979
    iput-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCapacity_:J

    return-void
.end method

.method private clearTraceLogCount()V
    .registers 2

    const/4 v0, 0x0

    .line 4194
    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCount_:I

    return-void
.end method

.method private clearTraceLogDisabled()V
    .registers 2

    const/4 v0, 0x0

    .line 4405
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDisabled_:Z

    return-void
.end method

.method private clearTraceLogDurationEvents()V
    .registers 2

    const/4 v0, 0x0

    .line 4320
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDurationEvents_:Z

    return-void
.end method

.method private clearTraceLogInstantEvents()V
    .registers 2

    const/4 v0, 0x0

    .line 4484
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogInstantEvents_:Z

    return-void
.end method

.method private clearTraceLogIntervalCount()V
    .registers 2

    const/4 v0, 0x0

    .line 4364
    iput v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalCount_:I

    return-void
.end method

.method private clearTraceLogIntervalUsec()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 4235
    iput-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalUsec_:J

    return-void
.end method

.method private clearTraceLogMarginUsec()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 4279
    iput-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogMarginUsec_:J

    return-void
.end method

.method private clearTraceLogPath()V
    .registers 2

    .line 4135
    invoke-static {}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->getTraceLogPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    return-void
.end method

.method private clearUsePacketTimestampForAddedPacket()V
    .registers 2

    const/4 v0, 0x0

    .line 3938
    iput-boolean v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->usePacketTimestampForAddedPacket_:Z

    return-void
.end method

.method private ensureTraceEventTypesDisabledIsMutable()V
    .registers 3

    .line 4024
    iget-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    .line 4025
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 4027
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 1

    .line 5646
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .registers 1

    .line 4629
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;
    .registers 2

    .line 4632
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4606
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4612
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4570
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4577
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4617
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4624
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4594
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4601
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4557
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4564
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 2

    .line 4582
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;
    .registers 3

    .line 4589
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;",
            ">;"
        }
    .end annotation

    .line 5652
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCalculatorFilter(Ljava/lang/String;)V
    .registers 2

    .line 4524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4526
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    return-void
.end method

.method private setCalculatorFilterBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 4549
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4550
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    return-void
.end method

.method private setEnableInputOutputLatency(Z)V
    .registers 2

    .line 3794
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableInputOutputLatency_:Z

    return-void
.end method

.method private setEnableProfiler(Z)V
    .registers 2

    .line 3836
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableProfiler_:Z

    return-void
.end method

.method private setEnableStreamLatency(Z)V
    .registers 2

    .line 3878
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableStreamLatency_:Z

    return-void
.end method

.method private setHistogramIntervalSizeUsec(J)V
    .registers 3

    .line 3705
    iput-wide p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->histogramIntervalSizeUsec_:J

    return-void
.end method

.method private setNumHistogramIntervals(J)V
    .registers 3

    .line 3747
    iput-wide p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->numHistogramIntervals_:J

    return-void
.end method

.method private setTraceEnabled(Z)V
    .registers 2

    .line 4432
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEnabled_:Z

    return-void
.end method

.method private setTraceEventTypesDisabled(II)V
    .registers 3

    .line 4041
    invoke-direct {p0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->ensureTraceEventTypesDisabledIsMutable()V

    .line 4042
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTraceLogCapacity(J)V
    .registers 3

    .line 3967
    iput-wide p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCapacity_:J

    return-void
.end method

.method private setTraceLogCount(I)V
    .registers 2

    .line 4181
    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCount_:I

    return-void
.end method

.method private setTraceLogDisabled(Z)V
    .registers 2

    .line 4393
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDisabled_:Z

    return-void
.end method

.method private setTraceLogDurationEvents(Z)V
    .registers 2

    .line 4308
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDurationEvents_:Z

    return-void
.end method

.method private setTraceLogInstantEvents(Z)V
    .registers 2

    .line 4472
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogInstantEvents_:Z

    return-void
.end method

.method private setTraceLogIntervalCount(I)V
    .registers 2

    .line 4351
    iput p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalCount_:I

    return-void
.end method

.method private setTraceLogIntervalUsec(J)V
    .registers 3

    .line 4223
    iput-wide p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalUsec_:J

    return-void
.end method

.method private setTraceLogMarginUsec(J)V
    .registers 3

    .line 4266
    iput-wide p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogMarginUsec_:J

    return-void
.end method

.method private setTraceLogPath(Ljava/lang/String;)V
    .registers 2

    .line 4121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4123
    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    return-void
.end method

.method private setTraceLogPathBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 4148
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4149
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    return-void
.end method

.method private setUsePacketTimestampForAddedPacket(Z)V
    .registers 2

    .line 3924
    iput-boolean p1, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->usePacketTimestampForAddedPacket_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    .line 5569
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_76

    .line 5630
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_12
    return-object v1

    :pswitch_13
    const/4 v0, 0x1

    .line 5624
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 5609
    :pswitch_19
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_34

    .line 5611
    const-class v1, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    monitor-enter v1

    .line 5612
    :try_start_20
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_30

    .line 5614
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5617
    sput-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_32

    .line 5619
    :cond_30
    :goto_30
    monitor-exit v1

    return-object v0

    :goto_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_2e

    throw v0

    :cond_34
    return-object v0

    .line 5606
    :pswitch_35
    sget-object v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    return-object v0

    .line 5577
    :pswitch_38
    const-string v2, "histogramIntervalSizeUsec_"

    const-string v3, "numHistogramIntervals_"

    const-string v4, "enableInputOutputLatency_"

    const-string v5, "enableProfiler_"

    const-string v6, "enableStreamLatency_"

    const-string v7, "usePacketTimestampForAddedPacket_"

    const-string v8, "traceLogCapacity_"

    const-string v9, "traceEventTypesDisabled_"

    const-string v10, "traceLogPath_"

    const-string v11, "traceLogCount_"

    const-string v12, "traceLogIntervalUsec_"

    const-string v13, "traceLogMarginUsec_"

    const-string v14, "traceLogDurationEvents_"

    const-string v15, "traceLogIntervalCount_"

    const-string v16, "traceLogDisabled_"

    const-string v17, "traceEnabled_"

    const-string v18, "traceLogInstantEvents_"

    const-string v19, "calculatorFilter_"

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 5597
    const-string v1, "\u0000\u0012\u0000\u0000\u0001\u0012\u0012\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003\u0007\u0004\u0007\u0005\u0007\u0006\u0007\u0007\u0002\u0008\'\t\u0208\n\u0004\u000b\u0002\u000c\u0002\r\u0007\u000e\u0004\u000f\u0007\u0010\u0007\u0011\u0007\u0012\u0208"

    .line 5602
    sget-object v2, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->DEFAULT_INSTANCE:Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 5574
    :pswitch_69
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;

    invoke-direct {v0, v1}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig$Builder;-><init>(Lcom/google/mediapipe/proto/CalculatorProto$1;)V

    return-object v0

    .line 5571
    :pswitch_6f
    new-instance v0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;

    invoke-direct {v0}, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;-><init>()V

    return-object v0

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_69
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getCalculatorFilter()Ljava/lang/String;
    .registers 1

    .line 4499
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    return-object p0
.end method

.method public getCalculatorFilterBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4512
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->calculatorFilter_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 3667
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getEnableInputOutputLatency()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3778
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableInputOutputLatency_:Z

    return p0
.end method

.method public getEnableProfiler()Z
    .registers 1

    .line 3824
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableProfiler_:Z

    return p0
.end method

.method public getEnableStreamLatency()Z
    .registers 1

    .line 3864
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->enableStreamLatency_:Z

    return p0
.end method

.method public getHistogramIntervalSizeUsec()J
    .registers 3

    .line 3691
    iget-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->histogramIntervalSizeUsec_:J

    return-wide v0
.end method

.method public getNumHistogramIntervals()J
    .registers 3

    .line 3734
    iget-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->numHistogramIntervals_:J

    return-wide v0
.end method

.method public getTraceEnabled()Z
    .registers 1

    .line 4420
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEnabled_:Z

    return p0
.end method

.method public getTraceEventTypesDisabled(I)I
    .registers 2

    .line 4020
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p0

    return p0
.end method

.method public getTraceEventTypesDisabledCount()I
    .registers 1

    .line 4007
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTraceEventTypesDisabledList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3995
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceEventTypesDisabled_:Lcom/google/protobuf/Internal$IntList;

    return-object p0
.end method

.method public getTraceLogCapacity()J
    .registers 3

    .line 3954
    iget-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCapacity_:J

    return-wide v0
.end method

.method public getTraceLogCount()I
    .registers 1

    .line 4167
    iget p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogCount_:I

    return p0
.end method

.method public getTraceLogDisabled()Z
    .registers 1

    .line 4380
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDisabled_:Z

    return p0
.end method

.method public getTraceLogDurationEvents()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4295
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogDurationEvents_:Z

    return p0
.end method

.method public getTraceLogInstantEvents()Z
    .registers 1

    .line 4459
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogInstantEvents_:Z

    return p0
.end method

.method public getTraceLogIntervalCount()I
    .registers 1

    .line 4337
    iget p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalCount_:I

    return p0
.end method

.method public getTraceLogIntervalUsec()J
    .registers 3

    .line 4210
    iget-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogIntervalUsec_:J

    return-wide v0
.end method

.method public getTraceLogMarginUsec()J
    .registers 3

    .line 4252
    iget-wide v0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogMarginUsec_:J

    return-wide v0
.end method

.method public getTraceLogPath()Ljava/lang/String;
    .registers 1

    .line 4094
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    return-object p0
.end method

.method public getTraceLogPathBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 4108
    iget-object p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->traceLogPath_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUsePacketTimestampForAddedPacket()Z
    .registers 1

    .line 3909
    iget-boolean p0, p0, Lcom/google/mediapipe/proto/CalculatorProto$ProfilerConfig;->usePacketTimestampForAddedPacket_:Z

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 3667
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 3667
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
