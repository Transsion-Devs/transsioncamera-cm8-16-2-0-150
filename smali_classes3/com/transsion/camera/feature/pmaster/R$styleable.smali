.class public final Lcom/transsion/camera/feature/pmaster/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/pmaster/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static PMCircularProgressBar:[I = null

.field public static PMCircularProgressBar_normalCircleColor:I = 0x0

.field public static PMCircularProgressBar_selectCircleColor:I = 0x1

.field public static PMCircularProgressBar_strokeWidth:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const v0, 0x7f0404f6

    const v1, 0x7f040563

    const v2, 0x7f0403bb

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/pmaster/R$styleable;->PMCircularProgressBar:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
