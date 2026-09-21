.class public final Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAILED:I = -0x1

.field public static final INCREMENT_SUCCESS_AFTER_NO_HANDLE:I = 0x1

.field public static final INCREMENT_SUCCESS_AFTER_PREPARE:I = 0x4

.field public static final INCREMENT_SUCCESS_AFTER_REFRESH:I = 0x2

.field public static final INSTANCE:Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;

.field public static final SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;

    invoke-direct {v0}, Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;-><init>()V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;->INSTANCE:Lcom/bytedance/ugc/nlerecorder/NLERecorderErrorCode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
