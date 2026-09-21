.class public Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/VlogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private duration:J

.field private height:I

.field private path:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/feature/mode/vlog/VlogInfo;
    .registers 4

    .line 115
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;-><init>()V

    .line 116
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->width:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->-$$Nest$fputmWidth(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;I)V

    .line 117
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->height:I

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->-$$Nest$fputmHeight(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;I)V

    .line 118
    iget-wide v1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->duration:J

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->-$$Nest$fputmDuration(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;J)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->path:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/VlogInfo;->-$$Nest$fputmVlogPath(Lcom/transsion/camera/feature/mode/vlog/VlogInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDuration(J)Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
    .registers 3

    .line 95
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->duration:J

    return-object p0
.end method

.method public setHeight(I)Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
    .registers 2

    .line 105
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->height:I

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;
    .registers 2

    .line 100
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogInfo$Builder;->width:I

    return-object p0
.end method
