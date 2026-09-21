.class public final synthetic Lcom/transsion/camera/app/ui/widget/RotateCompatImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    check-cast p1, Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;->$r8$lambda$gvTZv3hqOkzN89oNFcsXSmAHHBE(Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;Lcom/transsion/camera/app/ui/widget/IRotatable$RotateListener;)V

    return-void
.end method
