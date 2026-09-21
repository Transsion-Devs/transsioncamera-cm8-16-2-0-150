.class public final Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/util/proto/RenderDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderAnnotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$TextOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ArrowOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$ScribbleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLineOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$LineOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$PointOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOvalOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$OvalOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangleOrBuilder;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;,
        Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RectangleOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;",
        ">;",
        "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARROW_FIELD_NUMBER:I = 0x7

.field public static final COLOR_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

.field public static final FILLED_OVAL_FIELD_NUMBER:I = 0x4

.field public static final FILLED_RECTANGLE_FIELD_NUMBER:I = 0x2

.field public static final FILLED_ROUNDED_RECTANGLE_FIELD_NUMBER:I = 0xa

.field public static final GRADIENT_LINE_FIELD_NUMBER:I = 0xe

.field public static final LINE_FIELD_NUMBER:I = 0x6

.field public static final OVAL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x5

.field public static final RECTANGLE_FIELD_NUMBER:I = 0x1

.field public static final ROUNDED_RECTANGLE_FIELD_NUMBER:I = 0x9

.field public static final SCENE_TAG_FIELD_NUMBER:I = 0xd

.field public static final SCRIBBLE_FIELD_NUMBER:I = 0xf

.field public static final TEXT_FIELD_NUMBER:I = 0x8

.field public static final THICKNESS_FIELD_NUMBER:I = 0xb


# instance fields
.field private bitField0_:I

.field private color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

.field private dataCase_:I

.field private data_:Ljava/lang/Object;

.field private sceneTag_:Ljava/lang/String;

.field private thickness_:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10714
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;-><init>()V

    .line 10717
    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    .line 10718
    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1027
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 8872
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1028
    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    .line 1029
    const-string v0, ""

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15200()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 1

    .line 1022
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearData()V

    return-void
.end method

.method static synthetic access$15400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-void
.end method

.method static synthetic access$15500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V

    return-void
.end method

.method static synthetic access$15600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearRectangle()V

    return-void
.end method

.method static synthetic access$15700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-void
.end method

.method static synthetic access$15800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V

    return-void
.end method

.method static synthetic access$15900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledRectangle()V

    return-void
.end method

.method static synthetic access$16000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V

    return-void
.end method

.method static synthetic access$16200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearOval()V

    return-void
.end method

.method static synthetic access$16300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-void
.end method

.method static synthetic access$16400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V

    return-void
.end method

.method static synthetic access$16500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledOval()V

    return-void
.end method

.method static synthetic access$16600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$16700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergePoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V

    return-void
.end method

.method static synthetic access$16800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearPoint()V

    return-void
.end method

.method static synthetic access$16900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-void
.end method

.method static synthetic access$17000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V

    return-void
.end method

.method static synthetic access$17100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearLine()V

    return-void
.end method

.method static synthetic access$17200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearArrow()V

    return-void
.end method

.method static synthetic access$17500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-void
.end method

.method static synthetic access$17600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearText()V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearRoundedRectangle()V

    return-void
.end method

.method static synthetic access$18100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V

    return-void
.end method

.method static synthetic access$18300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearFilledRoundedRectangle()V

    return-void
.end method

.method static synthetic access$18400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-void
.end method

.method static synthetic access$18500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearGradientLine()V

    return-void
.end method

.method static synthetic access$18700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearScribble()V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;D)V
    .registers 3

    .line 1022
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setThickness(D)V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearThickness()V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->mergeColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearColor()V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Ljava/lang/String;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setSceneTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)V
    .registers 1

    .line 1022
    invoke-direct {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->clearSceneTag()V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1022
    invoke-direct {p0, p1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->setSceneTagBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearArrow()V
    .registers 3

    .line 9279
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9280
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9281
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearColor()V
    .registers 2

    const/4 v0, 0x0

    .line 9652
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 9653
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 8931
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 8932
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearFilledOval()V
    .registers 3

    .line 9129
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9130
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9131
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearFilledRectangle()V
    .registers 3

    .line 9029
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9030
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9031
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearFilledRoundedRectangle()V
    .registers 3

    .line 9429
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 9430
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9431
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearGradientLine()V
    .registers 3

    .line 9479
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 9480
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9481
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearLine()V
    .registers 3

    .line 9229
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9230
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9231
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearOval()V
    .registers 3

    .line 9079
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9080
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9081
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearPoint()V
    .registers 3

    .line 9179
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 9180
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9181
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearRectangle()V
    .registers 3

    .line 8979
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    .line 8980
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 8981
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method private clearRoundedRectangle()V
    .registers 3

    .line 9379
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 9380
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9381
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearSceneTag()V
    .registers 2

    .line 9722
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    .line 9723
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->getSceneTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method private clearScribble()V
    .registers 3

    .line 9529
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 9530
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9531
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearText()V
    .registers 3

    .line 9329
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    .line 9330
    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x0

    .line 9331
    iput-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method private clearThickness()V
    .registers 3

    .line 9581
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 9582
    iput-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 1

    .line 10723
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0
.end method

.method private mergeArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .registers 5

    .line 9265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9266
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9267
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9268
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;

    move-result-object v0

    .line 9269
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9271
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9273
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 4

    .line 9634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9635
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-eqz v0, :cond_22

    .line 9636
    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 9637
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 9638
    invoke-static {v0}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->newBuilder(Lcom/google/mediapipe/util/proto/ColorProto$Color;)Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/ColorProto$Color;

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    goto :goto_24

    .line 9640
    :cond_22
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 9642
    :goto_24
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private mergeFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .registers 5

    .line 9115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9116
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9117
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9118
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    move-result-object v0

    .line 9119
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9121
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9123
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .registers 5

    .line 9015
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9016
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9017
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9018
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;

    move-result-object v0

    .line 9019
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9021
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9023
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .registers 5

    .line 9415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9416
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9417
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 9418
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    move-result-object v0

    .line 9419
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_28

    .line 9421
    :cond_26
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9423
    :goto_28
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .registers 5

    .line 9465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9466
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9467
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 9468
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    move-result-object v0

    .line 9469
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_28

    .line 9471
    :cond_26
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9473
    :goto_28
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .registers 5

    .line 9215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9216
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9217
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9218
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;

    move-result-object v0

    .line 9219
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9221
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9223
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .registers 5

    .line 9065
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9066
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9067
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9068
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    move-result-object v0

    .line 9069
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9071
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9073
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergePoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .registers 5

    .line 9165
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9166
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9167
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 9168
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;

    move-result-object v0

    .line 9169
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 9171
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9173
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .registers 5

    .line 8965
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8966
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8967
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object v2

    if-eq v0, v2, :cond_25

    .line 8968
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    move-result-object v0

    .line 8969
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_27

    .line 8971
    :cond_25
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 8973
    :goto_27
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .registers 5

    .line 9365
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9366
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9367
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 9368
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    move-result-object v0

    .line 9369
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_28

    .line 9371
    :cond_26
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9373
    :goto_28
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .registers 5

    .line 9515
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9516
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9517
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 9518
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    move-result-object v0

    .line 9519
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_28

    .line 9521
    :cond_26
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9523
    :goto_28
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private mergeText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .registers 5

    .line 9315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9316
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9317
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 9318
    iget-object v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    invoke-static {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;

    move-result-object v0

    .line 9319
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    goto :goto_28

    .line 9321
    :cond_26
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    .line 9323
    :goto_28
    iput v1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .registers 1

    .line 9815
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;
    .registers 2

    .line 9818
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9792
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9798
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9756
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9763
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9803
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9810
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9780
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9787
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9743
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9750
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 2

    .line 9768
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;
    .registers 3

    .line 9775
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;",
            ">;"
        }
    .end annotation

    .line 10729
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrow(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;)V
    .registers 2

    .line 9257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9258
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 9259
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setColor(Lcom/google/mediapipe/util/proto/ColorProto$Color;)V
    .registers 2

    .line 9620
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9621
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    .line 9622
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private setFilledOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;)V
    .registers 2

    .line 9107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9108
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 9109
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setFilledRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;)V
    .registers 2

    .line 9007
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9008
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 9009
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setFilledRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;)V
    .registers 2

    .line 9407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9408
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 9409
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setGradientLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;)V
    .registers 2

    .line 9457
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9458
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 9459
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setLine(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;)V
    .registers 2

    .line 9207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9208
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 9209
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setOval(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;)V
    .registers 2

    .line 9057
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9058
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 9059
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setPoint(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;)V
    .registers 2

    .line 9157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9158
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 9159
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;)V
    .registers 2

    .line 8957
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8958
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 8959
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setRoundedRectangle(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;)V
    .registers 2

    .line 9357
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9358
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 9359
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setSceneTag(Ljava/lang/String;)V
    .registers 3

    .line 9709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9710
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    .line 9711
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-void
.end method

.method private setSceneTagBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 9736
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    .line 9737
    iget p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    return-void
.end method

.method private setScribble(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;)V
    .registers 2

    .line 9507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9508
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 9509
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setText(Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;)V
    .registers 2

    .line 9307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9308
    iput-object p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 9309
    iput p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    return-void
.end method

.method private setThickness(D)V
    .registers 4

    .line 9570
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    .line 9571
    iput-wide p1, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 24

    .line 10646
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_76

    .line 10707
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_12
    return-object v1

    :pswitch_13
    const/4 v0, 0x1

    .line 10701
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 10686
    :pswitch_19
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_34

    .line 10688
    const-class v1, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    monitor-enter v1

    .line 10689
    :try_start_20
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_30

    .line 10691
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10694
    sput-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_30

    :catchall_2e
    move-exception v0

    goto :goto_32

    .line 10696
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

    .line 10683
    :pswitch_35
    sget-object v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    return-object v0

    .line 10654
    :pswitch_38
    const-string v2, "data_"

    const-string v3, "dataCase_"

    const-string v4, "bitField0_"

    const-class v5, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    const-class v6, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    const-class v7, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    const-class v8, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    const-class v9, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    const-class v10, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    const-class v11, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    const-class v12, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    const-class v13, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    const-class v14, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    const-string v15, "thickness_"

    const-string v16, "color_"

    const-string v17, "sceneTag_"

    const-class v18, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    const-class v19, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    .line 10674
    const-string v1, "\u0001\u000f\u0001\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000\u0004\u103c\u0000\u0005\u103c\u0000\u0006\u103c\u0000\u0007\u103c\u0000\u0008\u103c\u0000\t\u103c\u0000\n\u103c\u0000\u000b\u1000\u000c\u000c\u1009\r\r\u1008\u000e\u000e\u103c\u0000\u000f\u103c\u0000"

    .line 10679
    sget-object v2, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->DEFAULT_INSTANCE:Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 10651
    :pswitch_69
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;

    invoke-direct {v0, v1}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Builder;-><init>(Lcom/google/mediapipe/util/proto/RenderDataProto$1;)V

    return-object v0

    .line 10648
    :pswitch_6f
    new-instance v0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;

    invoke-direct {v0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;-><init>()V

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

.method public getArrow()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;
    .registers 3

    .line 9248
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a

    .line 9249
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    return-object p0

    .line 9251
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Arrow;

    move-result-object p0

    return-object p0
.end method

.method public getColor()Lcom/google/mediapipe/util/proto/ColorProto$Color;
    .registers 1

    .line 9609
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->color_:Lcom/google/mediapipe/util/proto/ColorProto$Color;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/google/mediapipe/util/proto/ColorProto$Color;->getDefaultInstance()Lcom/google/mediapipe/util/proto/ColorProto$Color;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getDataCase()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;
    .registers 1

    .line 8926
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    invoke-static {p0}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;->forNumber(I)Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 1

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public getFilledOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;
    .registers 3

    .line 9098
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 9099
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    return-object p0

    .line 9101
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledOval;

    move-result-object p0

    return-object p0
.end method

.method public getFilledRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;
    .registers 3

    .line 8998
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 8999
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    return-object p0

    .line 9001
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRectangle;

    move-result-object p0

    return-object p0
.end method

.method public getFilledRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;
    .registers 3

    .line 9398
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_b

    .line 9399
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    return-object p0

    .line 9401
    :cond_b
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$FilledRoundedRectangle;

    move-result-object p0

    return-object p0
.end method

.method public getGradientLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;
    .registers 3

    .line 9448
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_b

    .line 9449
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    return-object p0

    .line 9451
    :cond_b
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$GradientLine;

    move-result-object p0

    return-object p0
.end method

.method public getLine()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;
    .registers 3

    .line 9198
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    .line 9199
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    return-object p0

    .line 9201
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Line;

    move-result-object p0

    return-object p0
.end method

.method public getOval()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;
    .registers 3

    .line 9048
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 9049
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    return-object p0

    .line 9051
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Oval;

    move-result-object p0

    return-object p0
.end method

.method public getPoint()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;
    .registers 3

    .line 9148
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    .line 9149
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    return-object p0

    .line 9151
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Point;

    move-result-object p0

    return-object p0
.end method

.method public getRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;
    .registers 3

    .line 8948
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 8949
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    return-object p0

    .line 8951
    :cond_a
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getRoundedRectangle()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;
    .registers 3

    .line 9348
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_b

    .line 9349
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    return-object p0

    .line 9351
    :cond_b
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$RoundedRectangle;

    move-result-object p0

    return-object p0
.end method

.method public getSceneTag()Ljava/lang/String;
    .registers 1

    .line 9682
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    return-object p0
.end method

.method public getSceneTagBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 9696
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->sceneTag_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getScribble()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;
    .registers 3

    .line 9498
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_b

    .line 9499
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    return-object p0

    .line 9501
    :cond_b
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Scribble;

    move-result-object p0

    return-object p0
.end method

.method public getText()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;
    .registers 3

    .line 9298
    iget v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 9299
    iget-object p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    return-object p0

    .line 9301
    :cond_b
    invoke-static {}, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;->getDefaultInstance()Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation$Text;

    move-result-object p0

    return-object p0
.end method

.method public getThickness()D
    .registers 3

    .line 9559
    iget-wide v0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->thickness_:D

    return-wide v0
.end method

.method public hasArrow()Z
    .registers 2

    .line 9241
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasColor()Z
    .registers 1

    .line 9597
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasFilledOval()Z
    .registers 2

    .line 9091
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasFilledRectangle()Z
    .registers 2

    .line 8991
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasFilledRoundedRectangle()Z
    .registers 2

    .line 9391
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v0, 0xa

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasGradientLine()Z
    .registers 2

    .line 9441
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v0, 0xe

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasLine()Z
    .registers 2

    .line 9191
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasOval()Z
    .registers 2

    .line 9041
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasPoint()Z
    .registers 2

    .line 9141
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public hasRectangle()Z
    .registers 2

    .line 8941
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasRoundedRectangle()Z
    .registers 2

    .line 9341
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasSceneTag()Z
    .registers 1

    .line 9669
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasScribble()Z
    .registers 2

    .line 9491
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v0, 0xf

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasText()Z
    .registers 2

    .line 9291
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->dataCase_:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public hasThickness()Z
    .registers 1

    .line 9547
    iget p0, p0, Lcom/google/mediapipe/util/proto/RenderDataProto$RenderAnnotation;->bitField0_:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 1

    .line 1022
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    return-object p0
.end method
