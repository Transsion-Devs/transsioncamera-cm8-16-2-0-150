.class public final synthetic Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUI5;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/ui/HintInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUI5;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ui/HintInfo;

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/HintUI5;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/HintUI5$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/app/ui/HintUI5;->$r8$lambda$VdWsK2ceNdwEw1znkj7BID4ALJU(Lcom/transsion/camera/app/ui/HintUI5;Lcom/transsion/camera/app/common/ui/HintInfo;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
