.class public Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private dir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getDir()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->dir:Ljava/lang/String;

    return-object p0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;->dir:Ljava/lang/String;

    return-void
.end method
