.class public final synthetic Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

.field public final synthetic f$1:D


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewUI5;D)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iput-wide p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;->f$1:D

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iget-wide v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda8;->f$1:D

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/app/ui/PreviewUI5;->$r8$lambda$iIO5oDoRJrAGhAysdbtEHRtX43I(Lcom/transsion/camera/app/ui/PreviewUI5;D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method
