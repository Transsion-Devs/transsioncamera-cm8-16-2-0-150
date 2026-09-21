.class Lcom/bytedance/ies/nle/editor_jni/NLEError$SwigNext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nle/editor_jni/NLEError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwigNext"
.end annotation


# static fields
.field private static next:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1

    .line 54
    sput p0, Lcom/bytedance/ies/nle/editor_jni/NLEError$SwigNext;->next:I

    return p0
.end method

.method static synthetic access$008()I
    .registers 2

    .line 54
    sget v0, Lcom/bytedance/ies/nle/editor_jni/NLEError$SwigNext;->next:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/bytedance/ies/nle/editor_jni/NLEError$SwigNext;->next:I

    return v0
.end method
