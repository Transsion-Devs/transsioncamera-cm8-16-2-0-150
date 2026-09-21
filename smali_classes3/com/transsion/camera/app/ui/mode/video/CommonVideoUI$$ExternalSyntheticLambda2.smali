.class public final synthetic Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    check-cast p1, Lcom/transsion/camera/app/common/ui/IVideoUIExt;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->$r8$lambda$6iaXyVKhxOaN_LJR135feOsS0bs(Landroid/view/View;Lcom/transsion/camera/app/common/ui/IVideoUIExt;)V

    return-void
.end method
