.class public final synthetic Lcom/obs/services/model/PutObjectsRequest$$ExternalSyntheticLambda0;
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
    check-cast p1, Lcom/obs/services/model/ExtensionObjectPermissionEnum;

    invoke-static {p1}, Lcom/obs/services/model/PutObjectsRequest;->$r8$lambda$nVDlPOogCbZqG28-Auwu6FDXoB8(Lcom/obs/services/model/ExtensionObjectPermissionEnum;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
