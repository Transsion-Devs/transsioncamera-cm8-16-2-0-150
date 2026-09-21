.class public Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranDisplayCutoutAdapter;


# instance fields
.field private mTranDisplayCutout:Lcom/transsion/hubsdk/view/TranDisplayCutout;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/transsion/hubsdk/view/TranDisplayCutout;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranDisplayCutout;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;->mTranDisplayCutout:Lcom/transsion/hubsdk/view/TranDisplayCutout;

    return-void
.end method


# virtual methods
.method public isBoundsEmpty(Landroid/view/DisplayCutout;)Z
    .registers 2

    .line 18
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubDisplayCutout;->mTranDisplayCutout:Lcom/transsion/hubsdk/view/TranDisplayCutout;

    if-eqz p0, :cond_9

    .line 19
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranDisplayCutout;->isBoundsEmpty(Landroid/view/DisplayCutout;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
