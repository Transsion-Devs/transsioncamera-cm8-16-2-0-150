.class final Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ugc/cut_ui/AbsServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INTERFACE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final creator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
            "TINTERFACE;>;"
        }
    .end annotation
.end field

.field private final serviceLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/MutableLiveData;Lcom/ss/android/ugc/cut_ui/InterfaceCreator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData;",
            "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
            "TINTERFACE;>;)V"
        }
    .end annotation

    const-string v0, "serviceLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 127
    iput-object p2, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->creator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;

    return-void
.end method


# virtual methods
.method public final getCreator()Lcom/ss/android/ugc/cut_ui/InterfaceCreator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ss/android/ugc/cut_ui/InterfaceCreator<",
            "TINTERFACE;>;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->creator:Lcom/ss/android/ugc/cut_ui/InterfaceCreator;

    return-object p0
.end method

.method public final getServiceLiveData()Landroidx/lifecycle/MutableLiveData;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 132
    const-string p0, "onBindingDied "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cutui.UiClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 136
    const-string p0, "onNullBinding "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cutui.UiClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 146
    :cond_3
    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getServiceLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->getCreator()Lcom/ss/android/ugc/cut_ui/InterfaceCreator;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/ss/android/ugc/cut_ui/InterfaceCreator;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 140
    const-string p1, "cutui.UiClient"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/AbsServiceClient$Connection;->serviceLiveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
