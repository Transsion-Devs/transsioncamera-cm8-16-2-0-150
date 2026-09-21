.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/LayoutInflater;

.field public final synthetic f$1:Landroid/widget/LinearLayout;

.field public final synthetic f$2:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$0:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$2:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$0:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$1:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;->f$2:Landroid/view/ViewGroup;

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->$r8$lambda$umsYkdyQQG1pty3RmwO2NViiZNw(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    return-void
.end method
