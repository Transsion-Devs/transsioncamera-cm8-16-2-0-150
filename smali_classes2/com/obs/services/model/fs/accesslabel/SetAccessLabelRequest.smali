.class public Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private dir:Ljava/lang/String;

.field private roleLabel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDir()Ljava/lang/String;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public getRoleLabel()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->roleLabel:Ljava/util/List;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->dir:Ljava/lang/String;

    return-void
.end method

.method public setRoleLabel(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;->roleLabel:Ljava/util/List;

    return-void
.end method
