.class public final synthetic Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;->$r8$lambda$B7k7OpKxYbLs81kLyB1guWbHUgk(Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;Ljava/lang/String;ZLcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method
