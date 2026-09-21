.class public final synthetic Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/PreviewUI5;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iput p2, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$1:I

    iput p3, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$0:Lcom/transsion/camera/app/ui/PreviewUI5;

    iget v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$1:I

    iget p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$$ExternalSyntheticLambda11;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/app/ui/PreviewUI5;->$r8$lambda$XKVCR06ipWinR6t9qH6AkmJA-FY(Lcom/transsion/camera/app/ui/PreviewUI5;II)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method
