.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iput p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->$r8$lambda$Zi43annYwuWi3e_jcLw0v-EJCIM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;IILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    return-void
.end method
