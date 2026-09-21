.class public final synthetic Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/PreviewUI5;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewUI5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    check-cast p1, Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5;->$r8$lambda$2Gd4utz7MFZ1IO030B6qjGs6py0(Lcom/transsion/camera/app/ui/PreviewUI5;Lcom/transsion/camera/app/ui/AbstractPreviewUI$UIHandler;)V

    return-void
.end method
