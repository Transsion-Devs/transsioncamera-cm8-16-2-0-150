.class public final synthetic Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;->$r8$lambda$fEmp2VUkj6i-VPKhYsJ2Uy_-Lt0(Lcom/transsion/camera/app/ui/mode/underwater/UnderwaterUI;IZ)V

    return-void
.end method
