.class public Lthubutils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    if-nez v0, :cond_33

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/system_ext/etc/vconfig/"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/tr_product/etc/vconfig/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/tr_region/etc/vconfig/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/tr_carrier/etc/vconfig/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/tr_company/etc/vconfig/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    const-string v1, "/tranfs/etc/vconfig/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_33
    sget-object v0, Lthubutils/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public static b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/transsion/hubsdk/thubutils/AssetFallback;->ensure()Ljava/lang/String;

    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    if-nez v0, :cond_41

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lthubutils/b;->b:Ljava/util/List;

    invoke-static {}, Lcom/transsion/hubsdk/thubutils/AssetFallback;->ensure()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const-string v1, "/tr_company/"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    const-string v1, "/tr_carrier/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    const-string v1, "/tr_region/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    const-string v1, "/tr_product/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    const-string v1, "/system_ext/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    const-string v1, "/tranfs/"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_41
    sget-object v0, Lthubutils/b;->b:Ljava/util/List;

    return-object v0
.end method
