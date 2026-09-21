.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;->f$0:I

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;->f$0:I

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->$r8$lambda$bo2jrBTyaw9UTEb2REtdRwGlPrY(IZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    return-void
.end method
