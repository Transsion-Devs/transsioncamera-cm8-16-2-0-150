.class Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/burstpmk/IBurstPMKUI$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKPreview(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKPreview;->onDirectionChange(I)V

    .line 161
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKCapture(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode$3;->this$0:Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;->-$$Nest$fgetmBurstPMKCapture(Lcom/transsion/camera/feature/burstpmk/BurstPMKMode;)Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/burstpmk/BurstPMKCapture;->onDirectionChange(I)V

    :cond_22
    return-void
.end method
