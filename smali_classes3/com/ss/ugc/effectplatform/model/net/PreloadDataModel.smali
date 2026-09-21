.class public final Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final md5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "md5"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_35

    .line 77
    const-class v2, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_35

    .line 79
    :cond_1c
    check-cast p1, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;

    .line 81
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 82
    :cond_29
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->md5:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->md5:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v1

    :cond_34
    return v0

    :cond_35
    :goto_35
    return v1
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getMd5()Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->md5:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/net/PreloadDataModel;->md5:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
