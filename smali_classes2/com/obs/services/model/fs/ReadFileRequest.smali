.class public Lcom/obs/services/model/fs/ReadFileRequest;
.super Lcom/obs/services/model/GetObjectRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/obs/services/model/GetObjectRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/obs/services/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
