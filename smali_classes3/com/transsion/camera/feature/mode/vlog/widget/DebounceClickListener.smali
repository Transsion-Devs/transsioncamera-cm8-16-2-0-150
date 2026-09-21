.class public abstract Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x1f4

.field private static sGlobalEnabled:Z = true


# instance fields
.field private final isGlobal:Z

.field private final mDelayInterval:I

.field private final mEnableAgainRunnable:Ljava/lang/Runnable;

.field private mbLocalEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$UwZ5Znsii9AgYWkUyfHuS1H6MwY(Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->lambda$new$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mbLocalEnabled:Z

    .line 15
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mEnableAgainRunnable:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    .line 18
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mDelayInterval:I

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->isGlobal:Z

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mbLocalEnabled:Z

    .line 15
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mEnableAgainRunnable:Ljava/lang/Runnable;

    .line 23
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mDelayInterval:I

    .line 24
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->isGlobal:Z

    return-void
.end method

.method synthetic constructor <init>(IZLcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;-><init>(IZ)V

    return-void
.end method

.method private isEnabled()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->isGlobal:Z

    if-eqz v0, :cond_7

    .line 40
    sget-boolean p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->sGlobalEnabled:Z

    return p0

    .line 42
    :cond_7
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mbLocalEnabled:Z

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setEnable(Z)V

    return-void
.end method

.method private setEnable(Z)V
    .registers 3

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->isGlobal:Z

    if-eqz v0, :cond_7

    .line 48
    sput-boolean p1, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->sGlobalEnabled:Z

    return-void

    .line 50
    :cond_7
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mbLocalEnabled:Z

    return-void
.end method

.method public static setOnclickListener(Landroid/view/View;IZLandroid/view/View$OnClickListener;)V
    .registers 5

    .line 63
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$1;-><init>(IZLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 5

    .line 72
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$2;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$2;-><init>(IZLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract doClick(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setEnable(Z)V

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mEnableAgainRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->mDelayInterval:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->doClick(Landroid/view/View;)V

    :cond_15
    return-void
.end method
