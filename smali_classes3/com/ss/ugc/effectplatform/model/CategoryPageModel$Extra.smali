.class public final Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/CategoryPageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extra"
.end annotation


# instance fields
.field private rec_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;->rec_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRec_id()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;->rec_id:Ljava/lang/String;

    return-object p0
.end method

.method public final setRec_id(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/CategoryPageModel$Extra;->rec_id:Ljava/lang/String;

    return-void
.end method
