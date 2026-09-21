.class public final Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;

.field public static final KEY_TP_PREPARE:I = 0x2

.field public static final KEY_TS_PREPARE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/ReporterKey;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
