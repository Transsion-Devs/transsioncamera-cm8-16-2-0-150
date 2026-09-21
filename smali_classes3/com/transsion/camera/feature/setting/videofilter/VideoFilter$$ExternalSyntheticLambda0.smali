.class public final synthetic Lcom/transsion/camera/feature/setting/videofilter/VideoFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;

    return-void
.end method


# virtual methods
.method public final onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;->$r8$lambda$8a1lP9F0a6kbOx2nJ4Dn7--KZ2w(Lcom/transsion/camera/feature/setting/videofilter/VideoFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
