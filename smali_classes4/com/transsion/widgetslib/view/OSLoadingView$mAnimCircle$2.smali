.class final Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;

    invoke-direct {v0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;->INSTANCE:Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .registers 1

    const/4 p0, 0x2

    .line 54
    new-array p0, p0, [F

    fill-array-data p0, :array_c

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    nop

    :array_c
    .array-data 4
        0x0
        0x40c90fdb
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView$mAnimCircle$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
