.class final Lcom/obs/services/ObsClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/obs/services/ObsClient;->setInnerClient(Ljava/lang/Object;Lcom/obs/services/ObsClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$obj:Ljava/lang/Object;

.field final synthetic val$obsClient:Lcom/obs/services/ObsClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lcom/obs/services/ObsClient;)V
    .registers 5

    .line 262
    iput-object p1, p0, Lcom/obs/services/ObsClient$5;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/obs/services/ObsClient$5;->val$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lcom/obs/services/ObsClient$5;->val$obj:Ljava/lang/Object;

    iput-object p4, p0, Lcom/obs/services/ObsClient$5;->val$obsClient:Lcom/obs/services/ObsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 4

    .line 265
    # getter for: Lcom/obs/services/ObsClient;->fields:Ljava/util/Map;
    invoke-static {}, Lcom/obs/services/ObsClient;->access$400()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/ObsClient$5;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    if-nez v0, :cond_23

    .line 268
    :try_start_e
    iget-object v0, p0, Lcom/obs/services/ObsClient$5;->val$clazz:Ljava/lang/Class;

    const-string v1, "innerClient"

    # invokes: Lcom/obs/services/ObsClient;->getFieldFromClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    invoke-static {v0, v1}, Lcom/obs/services/ObsClient;->access$500(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 270
    # getter for: Lcom/obs/services/ObsClient;->fields:Ljava/util/Map;
    invoke-static {}, Lcom/obs/services/ObsClient;->access$400()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/ObsClient$5;->val$name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_23
    iget-object v1, p0, Lcom/obs/services/ObsClient$5;->val$obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/obs/services/ObsClient$5;->val$obsClient:Lcom/obs/services/ObsClient;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2a} :catch_2c

    const/4 p0, 0x0

    return-object p0

    :catch_2c
    move-exception p0

    .line 274
    new-instance v0, Lcom/obs/services/exception/ObsException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/obs/services/exception/ObsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
