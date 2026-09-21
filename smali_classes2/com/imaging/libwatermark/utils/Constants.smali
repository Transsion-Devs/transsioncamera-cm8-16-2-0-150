.class public final Lcom/imaging/libwatermark/utils/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CAMON_SERIES:Ljava/lang/String; = "CAMON"

.field public static final GT_SERIES:Ljava/lang/String; = "Infinix GT"

.field public static final HOT_SERIES:Ljava/lang/String; = "HOT"

.field public static final INSTANCE:Lcom/imaging/libwatermark/utils/Constants;

.field public static final NOTE_SERIES:Ljava/lang/String; = "NOTE"

.field public static final POP_SERIES:Ljava/lang/String; = "TECNO POP"

.field public static final POVA_SERIES:Ljava/lang/String; = "POVA"

.field public static final SPARK_SERIES:Ljava/lang/String; = "SPARK"

.field public static final UI_HEIGHT_LANDSCAPE:F = 95.0f

.field public static final UI_HEIGHT_PORTRAIT:F = 113.0f

.field public static final UI_WIDTH:F = 1080.0f

.field public static final UI_WIDTH_LEGAL:F = 1000.0f

.field public static final WATERMARK_STATE_NORMAL_FULL:I = 0x4

.field public static final WATERMARK_STATE_OFF_ALL:I = 0x0

.field public static final WATERMARK_STATE_OFF_CONFLICT:I = 0x5

.field public static final WATERMARK_STATE_OFF_LOCATION:I = 0x2

.field public static final WATERMARK_STATE_OFF_TIME:I = 0x3

.field public static final WATERMARK_STATE_OFF_TIME_LOCATION:I = 0x1

.field public static final ZERO_SERIES:Ljava/lang/String; = "ZERO"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/imaging/libwatermark/utils/Constants;

    invoke-direct {v0}, Lcom/imaging/libwatermark/utils/Constants;-><init>()V

    sput-object v0, Lcom/imaging/libwatermark/utils/Constants;->INSTANCE:Lcom/imaging/libwatermark/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
