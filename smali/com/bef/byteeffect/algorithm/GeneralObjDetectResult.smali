.class public Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation


# static fields
.field public static final DETECT_FAIL:I = -0x1

.field public static final DETECT_SUCCESS:I


# instance fields
.field private obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

.field private obj_infos_data:Ljava/lang/String;

.field private obj_num:I

.field private res:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    return-void
.end method

.method public constructor <init>(I[Lcom/bef/byteeffect/algorithm/ObjectInfo;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    .line 24
    iput p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    .line 25
    iput-object p2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

    return-void
.end method

.method public constructor <init>(I[Lcom/bef/byteeffect/algorithm/ObjectInfo;Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    .line 30
    iput p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    .line 31
    iput-object p2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

    .line 32
    iput-object p3, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos_data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ObjectInfosData(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos_data:Ljava/lang/String;

    return-void
.end method

.method public getObjectInfos()[Lcom/bef/byteeffect/algorithm/ObjectInfo;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

    return-object p0
.end method

.method public getObjectInfosData()Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos_data:Ljava/lang/String;

    return-object p0
.end method

.method public getObjectNum()I
    .registers 1

    .line 60
    iget p0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    return p0
.end method

.method public getResult()I
    .registers 1

    .line 39
    iget p0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    return p0
.end method

.method public logData()V
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralObjDetectResult res:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " obj_num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EffectSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 94
    :goto_23
    iget v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    if-ge v0, v2, :cond_31

    .line 95
    iget-object v2, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/bef/byteeffect/algorithm/ObjectInfo;->logData()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 97
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GeneralObjDetectResult buffer:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos_data:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setObjectInfos([Lcom/bef/byteeffect/algorithm/ObjectInfo;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_infos:[Lcom/bef/byteeffect/algorithm/ObjectInfo;

    return-void
.end method

.method public setObjectNum(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->obj_num:I

    return-void
.end method

.method public setResult(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/bef/byteeffect/algorithm/GeneralObjDetectResult;->res:I

    return-void
.end method
