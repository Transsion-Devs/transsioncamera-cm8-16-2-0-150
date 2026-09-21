.class public final Lcom/bytedance/ies/cutsame/cut_android/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUT_VERSION:Ljava/lang/String; = "32.0.2"

.field public static final CUT_VERSION_FIRST:I = 0x20

.field public static final CUT_VERSION_LAST:I = 0x2

.field public static final CUT_VERSION_MIDDLE:I

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/Metadata;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/Metadata;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/Metadata;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/Metadata;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/Metadata;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
