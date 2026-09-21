.class public final synthetic Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/BaseArcFilterSettingUI;->$r8$lambda$Z-mj7aG38RqHj3GHGLrCugW4X3U(Lcom/transsion/camera/app/common/setting/StatusMonitor;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    return-object p0
.end method
