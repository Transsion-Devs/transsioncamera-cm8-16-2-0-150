.class Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualLensWarningCallback(I)V
    .registers 5

    .line 170
    invoke-static {}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback isFakeDualLensSupport(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->isFakeDualLensSupport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWarningType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->-$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->-$$Nest$fgetmWarningType(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;)I

    move-result v0

    if-eq v0, p1, :cond_66

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->isFakeDualLensSupport()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 172
    invoke-static {}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualLensWarningCallback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->refreshToUI(I)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens$2;->this$0:Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;->-$$Nest$fputmWarningType(Lcom/transsion/camera/feature/setting/fakeduallens/FakeDualLens;I)V

    :cond_66
    return-void
.end method
