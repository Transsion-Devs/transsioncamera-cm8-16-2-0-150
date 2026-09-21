.class public final Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSupportMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->mSupportMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Z
    .registers 2

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->mSupportMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 3

    .line 22
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->mSupportMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
