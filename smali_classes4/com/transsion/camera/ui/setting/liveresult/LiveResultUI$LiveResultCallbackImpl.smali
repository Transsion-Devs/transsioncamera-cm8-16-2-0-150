.class final Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LiveResultCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(Ljava/lang/Object;I)V
    .registers 3

    const-string p2, "data"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    check-cast p1, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-static {p2, p1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$setMCameraResult$p(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;->this$0:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;

    # invokes: Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateAllValue()V
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->access$updateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    return-void
.end method
