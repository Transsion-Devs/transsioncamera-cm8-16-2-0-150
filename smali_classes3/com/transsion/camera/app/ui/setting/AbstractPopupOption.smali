.class public abstract Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTag:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    return-void
.end method


# virtual methods
.method public getTag()I
    .registers 1

    .line 27
    iget p0, p0, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->mTag:I

    return p0
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onDismiss()V
.end method

.method protected updateItemTextStrokeAvailable(Landroid/view/View;IZ)V
    .registers 4

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/transsion/camera/app/ui/setting/AbstractPopupOption;->updateItemTextStrokeAvailable(Landroid/view/View;Z)V

    return-void
.end method

.method protected updateItemTextStrokeAvailable(Landroid/view/View;Z)V
    .registers 3

    .line 39
    instance-of p0, p1, Lcom/transsion/camera/app/ui/widget/StrokeTextView;

    if-eqz p0, :cond_9

    .line 40
    check-cast p1, Lcom/transsion/camera/app/ui/widget/StrokeTextView;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/widget/StrokeTextView;->setStrokeAvailable(Z)V

    :cond_9
    return-void
.end method
