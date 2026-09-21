.class final Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Lbytekn/foundation/io/file/FileOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index$inlined:I

.field final synthetic this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;I)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    iput p2, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;->$index$inlined:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 959
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    .line 1031
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor$newOutputStream$$inlined$synchronized$lambda$1;->this$0:Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;

    # getter for: Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->hasErrors:Lbytekn/foundation/concurrent/SharedReference;
    invoke-static {p0}, Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;->access$getHasErrors$p(Lcom/ss/ugc/effectplatform/cache/disklrucache/DiskLruCache$Editor;)Lbytekn/foundation/concurrent/SharedReference;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lbytekn/foundation/concurrent/SharedReference;->set(Ljava/lang/Object;)V

    return-void
.end method
