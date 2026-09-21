.class Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteCallback"
.end annotation


# instance fields
.field private final mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;


# direct methods
.method constructor <init>(Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;)V
    .registers 2

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;->mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 156
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 157
    # getter for: Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteCallback invoke methodName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string p2, "onResult"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 159
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$RemoteCallback;->mListener:Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/aosp/app/role/TranAospRoleManager$OnResultListener;->onResult(Landroid/os/Bundle;)V

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method
