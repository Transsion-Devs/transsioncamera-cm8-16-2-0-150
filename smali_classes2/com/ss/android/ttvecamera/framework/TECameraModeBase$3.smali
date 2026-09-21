.class Lcom/ss/android/ttvecamera/framework/TECameraModeBase$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/framework/TECameraModeBase;)V
    .registers 2

    .line 677
    iput-object p1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$3;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 680
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$3;->this$0:Lcom/ss/android/ttvecamera/framework/TECameraModeBase;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase;->mFocusStrategy:Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;

    invoke-interface {p0}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy;->cancelFocus()I

    return-void
.end method
