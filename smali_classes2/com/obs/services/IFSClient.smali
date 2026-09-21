.class public interface abstract Lcom/obs/services/IFSClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract appendFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
.end method

.method public abstract close()V
.end method

.method public abstract deleteAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/DeleteAccessLabelResult;
.end method

.method public abstract dropFile(Lcom/obs/services/model/fs/DropFileRequest;)Lcom/obs/services/model/fs/DropFileResult;
.end method

.method public abstract dropFolder(Lcom/obs/services/model/fs/DropFolderRequest;)Lcom/obs/services/model/TaskProgressStatus;
.end method

.method public abstract getAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/GetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/GetAccessLabelResult;
.end method

.method public abstract getAttribute(Lcom/obs/services/model/fs/GetAttributeRequest;)Lcom/obs/services/model/fs/ObsFSAttribute;
.end method

.method public abstract getBucketFSStatus(Lcom/obs/services/model/fs/GetBucketFSStatusRequest;)Lcom/obs/services/model/fs/GetBucketFSStatusResult;
.end method

.method public abstract getContentSummaryFs(Lcom/obs/services/model/fs/ContentSummaryFsRequest;)Lcom/obs/services/model/fs/ContentSummaryFsResult;
.end method

.method public abstract listContentSummary(Lcom/obs/services/model/fs/ListContentSummaryRequest;)Lcom/obs/services/model/fs/ListContentSummaryResult;
.end method

.method public abstract listContentSummaryFs(Lcom/obs/services/model/fs/ListContentSummaryFsRequest;)Lcom/obs/services/model/fs/ListContentSummaryFsResult;
.end method

.method public abstract newBucket(Lcom/obs/services/model/fs/NewBucketRequest;)Lcom/obs/services/model/fs/ObsFSBucket;
.end method

.method public abstract newFile(Lcom/obs/services/model/fs/NewFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
.end method

.method public abstract newFolder(Lcom/obs/services/model/fs/NewFolderRequest;)Lcom/obs/services/model/fs/ObsFSFolder;
.end method

.method public abstract readFile(Lcom/obs/services/model/fs/ReadFileRequest;)Lcom/obs/services/model/fs/ReadFileResult;
.end method

.method public abstract renameFile(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
.end method

.method public abstract renameFolder(Lcom/obs/services/model/fs/RenameRequest;)Lcom/obs/services/model/fs/RenameResult;
.end method

.method public abstract setAccessLabelFs(Lcom/obs/services/model/fs/accesslabel/SetAccessLabelRequest;)Lcom/obs/services/model/fs/accesslabel/SetAccessLabelResult;
.end method

.method public abstract setBucketFSStatus(Lcom/obs/services/model/fs/SetBucketFSStatusRequest;)Lcom/obs/services/model/HeaderResponse;
.end method

.method public abstract truncateFile(Lcom/obs/services/model/fs/TruncateFileRequest;)Lcom/obs/services/model/fs/TruncateFileResult;
.end method

.method public abstract writeFile(Lcom/obs/services/model/fs/WriteFileRequest;)Lcom/obs/services/model/fs/ObsFSFile;
.end method
