from pyserini.index.lucene import IndexReader
from pyserini.analysis import Analyzer, get_lucene_analyzer
from pyserini.search import LuceneSearcher

index_path = './index/WET_PART_A'
part_a_index = IndexReader(index_path)
print(part_a_index.stats())

# Initialize the searcher
searcher = LuceneSearcher(index_path)
# specify custom analyzer for the query processing step to match the way the index was built
analyzer = get_lucene_analyzer(stemmer='none', stopwords=False) #Ensure no stopwords are removed from the query
searcher.set_analyzer(analyzer)
# Set BM25 parameters
searcher.set_bm25(k1=0.9, b=0.4)
# perform a search
query = 'corporation'
hits = searcher.search(query, k =4)
#Display results
for i in range(len(hits)):
    print(f"Doc {hits[i].docid}, Score: {hits[i].score}")