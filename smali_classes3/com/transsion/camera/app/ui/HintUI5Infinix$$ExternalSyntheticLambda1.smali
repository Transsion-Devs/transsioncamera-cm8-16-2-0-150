.class public final synthetic Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/HintUI5Infinix;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/app/ui/HintUI5Infinix;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/HintUI5Infinix$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/HintUI5Infinix;->$r8$lambda$MyZOL_KCyibzC3QOf-ubQVJbQfs(Lcom/transsion/camera/app/ui/HintUI5Infinix;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
